
//
//  MyCropsViewController.m
//  CropAlerts
//
//  Created by JayD on 12/04/2015.
//  Copyright (c) 2015 NASA. All rights reserved.
//

#import "MyCropsViewController.h"

@interface MyCropsViewController ()
{

    NSArray * dataArr;
    
}
@end

@implementation MyCropsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    dataArr =
    @[@{
          @"id":@"1",
          @"name":@"Wheat",
          @"detail":@"This grain is grown on more land area than any other commercial food.[citation needed] World trade in wheat is greater than for all other crops combined.Globally, wheat is the leading source of vegetable protein in human food, having a higher protein content than other major cereals, maize (corn) or rice.[6] In terms of total production tonnages used for food, it is currently second to rice as the main human food crop and ahead of maize, after allowing for maize's more extensive use in animal feeds.",
          @"image":@"crop_image1.jpg"
          },@{
          @"id":@"2",
          @"name":@"Canola",
          @"detail":@"Canola refers to both an edible oil (also known as canola oil) produced from the seed of any of several varieties of the rape plant, and to those plants, namely a cultivar of either rapeseed (Brassica napus L.) or field mustard/turnip rape (Brassica rapa subsp. oleifera, syn. B. campestris L.). Consumption of the oil is common and, unlike rapeseed, does not cause harm in humans and livestock. It is also used as a source of biodiesel.",
          @"image":@"crop_image2.jpg"
          },@{
          @"id":@"3",
          @"name":@"Barley",
          @"detail":@"Barley (Hordeum vulgare L.), a member of the grass family, is a major cereal grain. It was one of the first cultivated grains and is now grown widely. Barley grain is a staple in Tibetan cuisine and was eaten widely by peasants in Medieval Europe. Barley has also been used as animal fodder, as a source of fermentable material for beer and certain distilled beverages, and as a component of various health foods. It is used in soups and stews, and in barley bread of various cultures. Barley grains are commonly made into malt in a traditional and ancient method of preparation.",
          @"image":@"crop_image3.jpg"
          },@{
          @"id":@"4",
          @"name":@"Sugar Cane",
          @"detail":@"Sugarcane is one of the several species of tall perennial true grasses of the genus Saccharum, tribe Andropogoneae, native to the warm temperate to tropical regions of South Asia, and used for sugar production.They have stout jointed fibrous stalks that are rich in sugar, and measure two to six metres (6 to 19 feet) tall. All sugar cane species interbreed and the major commercial cultivars are complex hybrids.",
          @"image":@"crop_image4.jpg"
          },@{
          @"id":@"5",
          @"name":@"Cotton",
          @"detail":@"Cotton is a soft, fluffy staple fiber that grows in a boll, or protective capsule, around the seeds of cotton plants of the genus Gossypium in the family of Malvaceae. The fiber is almost pure cellulose. Under natural conditions, the cotton bolls will tend to increase the dispersion of the seeds.",
          @"image":@"crop_image5.jpg"
          }];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - TableView Methods


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = nil;
        
        NSDictionary * data = dataArr[indexPath.row];
        
        cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"listCell"];
        UIImageView * imgView = (UIImageView *)[cell viewWithTag:100];
        UILabel * lblTitle  = (UILabel *)[cell viewWithTag:101];
        UILabel * lblDetail = (UILabel *)[cell viewWithTag:102];
//        UILabel * lblDate   = (UILabel *)[cell viewWithTag:103];
    
        [lblTitle setText:data[@"name"]];
        [lblDetail setText:data[@"detail"]];
//        [lblDate setText:@"12-04-2014"];
        [imgView setImage:[UIImage imageNamed:data[@"image"]]];
    
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

@end
