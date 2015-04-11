//
//  ViewController.m
//  ProApp
//
//  Created by Coeus on 30/03/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import "HomeViewController.h"
#import "ItemService.h"
#import "CustomMainMenuCell.h"
#import "Item.h"

@interface HomeViewController (){

    NSArray *menuList;

}

@end

@implementation HomeViewController


+ (UIColor *)colorFromHexString:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomMainMenuCell * cell = [tableView dequeueReusableCellWithIdentifier:@"mainMenuCell"];
    
    Item * mainItem = menuList[indexPath.row];
    
    [cell setBackgroundColor:[HomeViewController colorFromHexString:mainItem.color_main_start]];
    
    NSString * resourcePath = [[NSBundle mainBundle] resourcePath];
    
    NSString* imgName = [resourcePath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@%@", @"overview_graphics/",mainItem.image]];
    
    
    UIImage *img = [[UIImage alloc]initWithContentsOfFile:imgName];
    
    cell.cellImg.image = img;
    cell.cellLbl.text = mainItem.title;
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return menuList.count;
}

- (void)loadAllItemFromServer
{
    [ItemService laodAllItemForListWithSuccess:^(id data) {
        
        NSLog(@"%@",data);
        
        menuList = [NSArray arrayWithArray:data];
//        [_tableView reloadData];
        
    } failure:^(NSError *error) {
        
        [self showAlertWithMessage:error.localizedDescription];
    }];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    _tableView.dataSource = self;
//    _tableView.delegate = self;
    
    [self loadAllItemFromServer];
    
    
// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
