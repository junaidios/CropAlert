//
//  NewsViewController.h
//  CropAlerts
//
//  Created by JayD on 12/04/2015.
//  Copyright (c) 2015 NASA. All rights reserved.
//

#import "BaseViewController.h"

@interface NewsViewController : BaseViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentBar;

- (IBAction)SegmentChangedValue:(id)sender;
@end
