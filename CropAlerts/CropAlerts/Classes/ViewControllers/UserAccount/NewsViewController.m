//
//  NewsViewController.m
//  CropAlerts
//
//  Created by JayD on 12/04/2015.
//  Copyright (c) 2015 NASA. All rights reserved.
//

#import "NewsViewController.h"

@interface NewsViewController ()<UITableViewDataSource, UITableViewDelegate>{

    NSMutableArray * dataArr;
    NSMutableArray * pestArr;
    NSMutableArray * cropsArr;
}

@property (weak, nonatomic) IBOutlet UITableView *tblView;
@end

@implementation NewsViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    cropsArr = @[@"Canola",
                 @"Wheat",
                 @"Barley",
                 @"Oat",
                 @"Rye",
                 @"Triticale",
                 @"Maize, Corn",
                 @"Forage, Grain and Broomcorn",
                 @"Rice",
                 @"Canary Seed",
                 @"Teff",
                 @"Various Millets"].mutableCopy;
    
    
    pestArr = @[@{
          @"id":@"1",
          @"name":@"Aphids",
          @"detail":@"Several species of aphids may be found in corn, but corn leaf aphid and greenbug are the primary aphid species infesting corn in California. Corn leaf aphids are small to medium and bluish green in color and also infest small grains. The greenbug is a moderate-sized aphid. The color of the abdomen is light green with a darker stripe down the middle. Both winged and wingless forms of both aphids occur on corn plants.",
          @"date":@"25/04/1995",
          @"pesticide":@"ENDOSULFAN",
          @"image":@"image1.jpg"
          },@{
          @"id":@"2",
          @"name":@"Beet Armyworm",
          @"detail":@"The adult beet armyworm is a small, mottled gray- or dusky-winged moth. The moths fly mostly at night but may be seen flying up as you walk through the field.",
          @"date":@"12/05/1952",
          @"pesticide":@"FLUBENDIAMIDE",
          @"image":@"image2.jpg"
          },@{
          @"id":@"3",
          @"name":@"Cucumber Beetles",
          @"detail":@"The western spotted cucumber beetle and the western striped cucumber beetle occur throughout California. The other two species occur primarily in southern California. Cucumber beetles (also called corn rootworm beetles) overwinter as adults and are active beginning in early spring. Adults lay eggs at the base of plants. As soon as they hatch, larvae begin to feed on plant roots. They complete their development in the soil. There are about three generations a year.",
          @"date":@"18/04/1974",
          @"pesticide":@"Buprofizen",
          @"image":@"image3.jpg"
          },@{
          @"id":@"4",
          @"name":@"Western Yellowstriped Armyworm",
          @"detail":@"Western yellowstriped armyworm larvae are dark-colored, usually nearly black (but occasionally gray) with a broad yellow stripe on each side. They have a black spot on the side of the first abdominal segment.",
          @"date":@"14/01/2001",
          @"pesticide":@"CHLORANTRANILIPROLE",
          @"image":@"image4.jpg"
          },@{
          @"id":@"5",
          @"name":@"Aphids — General Considerations",
          @"detail":@"In addition to aphids described in this guideline, there are several other species that may be found on cereals throughout the year. Many occur in extremely low numbers and cause no damage. If, however, you encounter large numbers of an aphid or aphids that do not fit any of the following descriptions, please contact your farm advisor or county agricultural commissioner immediately. New species occur frequently, and your assistance in finding these is greatly appreciated.",
          @"date":@"15/04/1998",
          @"pesticide":@"Buldock",
          @"image":@"image5.jpg"
          },@{
          @"id":@"6",
          @"name":@"Aster Leafhopper",
          @"detail":@"Several species of leafhoppers feed on rice plants in California, but the only one known to be of economic importance is the aster leafhopper. The adults are about 0.125 inch long, with transparent wings that are strongly veined, and body background colors of gray and black. The nymphs have small wing pads in their last instar and range in color from yellow to dark green.",
          @"date":@"14/07/2001",
          @"pesticide":@"CARBARYL",
          @"image":@"image6.jpg"
          },@{
          @"id":@"7",
          @"name":@"Crayfish",
          @"detail":@"The most common crayfish in rice fields is the red crayfish, Procambarus clarkii, but Orconectes virilis, an olive-green colored crayfish, may also be found in canals and streams associated with rice fields. Crayfish reproduce once a year. Mating takes place anytime between spring and autumn. Eggs hatch in fall or following spring.",
          @"date":@"15/02/1999",
          @"pesticide":@"Cyfluthrin",
          @"image":@"image7.jpg"
          },@{
          @"id":@"8",
          @"name":@"Armyworms",
          @"detail":@"Two species of armyworms, the armyworm and the western yellowstriped armyworm, are found in rice fields in mid-summer. Spring and early summer generations are spent on other plants. When other food sources are depleted, larvae of either species may migrate into rice paddies, or adult moths may fly into the rice field to lay eggs.",
          @"date":@"08/2004",
          @"pesticide":@"ZETA-CYPERMETHRIN",
          @"image":@"image8.jpg"
          },@{
          @"id":@"9",
          @"name":@"Grasshoppers",
          @"detail":@"Grasshoppers may occasionally attack grain crops, particularly if planted adjacent to foothill rangeland. They normally migrate from the range into cultivated areas as vegetation on the rangeland dries up.",
          @"date":@"17/03/2012",
          @"pesticide":@"METHYL PARATHION*",
          @"image":@"image9.jpg"
          },@{
          @"id":@"10",
          @"name":@"Greenbug",
          @"detail":@"The greenbug is a green to yellow-green aphid with a dark green stripe down the middle of its back. It can be distinguished from the Russian wheat aphid by its longer antennae, long tube-shaped cornicles, and the lack of a supracaudal process. Greenbug is most easily confused with the rose-grain aphid. However, the antennae of the greenbug are uniformly dark while those of the rose-grain aphid are darker only at each joint. Rose-grain aphid has eight or more hairs on the cauda while greenbug only has four; a microscope is needed to see these hairs.",
          @"date":@"16/08/1996",
          @"pesticide":@"METHOMYL",
          @"image":@"image10.jpg"
          }].mutableCopy;

    
    dataArr = cropsArr;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - TableView Methods


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    if (_segmentBar.selectedSegmentIndex == 1) {
        return 117.0;
    }
    
    return 44.0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
 
    return dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = nil;
    
    if (_segmentBar.selectedSegmentIndex == 1) {
        
        NSDictionary * data = dataArr[indexPath.row];
        
        cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"pestCell"];
        UIImageView * imgView = (UIImageView *)[cell viewWithTag:100];
        UILabel * lblTitle  = (UILabel *)[cell viewWithTag:101];
        UILabel * lblDetail = (UILabel *)[cell viewWithTag:102];
        UILabel * lblDate   = (UILabel *)[cell viewWithTag:103];
        
        [lblTitle setText:data[@"name"]];
        [lblDetail setText:data[@"detail"]];
        [lblDate setText:@"12-04-2014"];
        [imgView setImage:[UIImage imageNamed:data[@"image"]]];
    }
    else{
        
        NSString * title = dataArr[indexPath.row];
        
        cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"cropCell"];
        
        [cell.textLabel setText:title];
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)SegmentChangedValue:(id)sender {
    
    if (_segmentBar.selectedSegmentIndex == 0) {
        dataArr = cropsArr;
    }
    else{
        dataArr = pestArr;
    }
    
    [_tblView reloadData];
    
}
@end
