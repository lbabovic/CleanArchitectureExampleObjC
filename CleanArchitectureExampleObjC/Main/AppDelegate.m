//
//  AppDelegate.m
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 30/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (retain) AppCoordinator* appCoord;

@end

@implementation AppDelegate
@synthesize appCoord;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.appCoord = [[AppCoordinator alloc] init];
    [appCoord start];
    return YES;
}


@end
