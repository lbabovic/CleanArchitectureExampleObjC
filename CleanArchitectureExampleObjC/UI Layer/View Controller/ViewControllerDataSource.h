//
//  ViewControllerDataSource.h
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 07/05/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControllerDependencies.h"
#import "CharacterTableViewCell.h"
#import "DataSourceUpdateFeedback.h"

@interface ViewControllerDataSource: NSObject <UITableViewDataSource>

-(instancetype)init: (id<ViewControllerDependencies>) dependencies;
-(void)fetchData;
@property (strong, nonatomic) id<DataSourceUpdateFeedback> feedback;

@end
