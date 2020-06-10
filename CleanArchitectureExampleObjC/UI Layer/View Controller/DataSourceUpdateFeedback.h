//
//  DataSourceUpdateFeedback.h
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 10/06/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DataSourceUpdateFeedback <NSObject>

@required
- (void) dataSourceUpdated;

@end
