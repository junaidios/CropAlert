//
//  MyCropsViewController.h
//  CropAlerts
//
//  Created by JayD on 12/04/2015.
//  Copyright (c) 2015 NASA. All rights reserved.
//

#import "BaseViewController.h"

@interface MyCropsViewController : BaseViewController<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tblView;
@end
