//
//  ViewController.h
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 30/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControllerDataSource.h"

@interface ViewController: UIViewController <DataSourceUpdateFeedback, UITableViewDelegate>

-(instancetype)init: (ViewControllerDataSource*) dataSource;

@end

