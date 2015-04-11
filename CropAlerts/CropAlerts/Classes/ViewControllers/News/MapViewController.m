//
//  MapViewController.m
//  CropAlerts
//
//  Created by JayD on 11/04/2015.
//  Copyright (c) 2015 NASA. All rights reserved.
//

#import "MapViewController.h"
#import <MapKit/MapKit.h>
@interface MapViewController ()

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@end

@implementation MapViewController


#pragma mark - DBMapSelectorViewController Delegate

- (void)mapSelectorViewController:(DBMapSelectorViewController *)mapSelectorViewController didChangeCoordinate:(CLLocationCoordinate2D)coordinate {
//    _coordinateLabel.text = [NSString stringWithFormat:@"Coordinate = {%.5f, %.5f}", coordinate.latitude, coordinate.longitude];
}

- (void)mapSelectorViewController:(DBMapSelectorViewController *)mapSelectorViewController didChangeRadius:(CLLocationDistance)radius {
    NSString *radiusStr = (radius >= 1000) ? [NSString stringWithFormat:@"%.1f km", radius * .001f] : [NSString stringWithFormat:@"%.0f m", radius];
//    _radiusLabel.text = [@"Radius = " stringByAppendingString:radiusStr];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.delegate = self;
    self.mapView.showsUserLocation = YES;
    
    // Set Begin Settings
    self.circleCoordinate = CLLocationCoordinate2DMake(55.75399400, 37.62209300);
    self.circleRadius = 3000;
    self.circleRadiusMax = 25000;
    [self updateMapRegionForMapSelector];

    
    self.editingType = DBMapSelectorEditingTypeCoordinateOnly;
    
    self.fillColor = [UIColor purpleColor];
    self.strokeColor = [UIColor darkGrayColor];
    
    [self.mapView setUserInteractionEnabled:NO];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
