//
//  AppCoordinator.m
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 30/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import "AppCoordinator.h"
#import "ViewController.h"
#import "AppDependenciesContainer.h"

@interface AppCoordinator()

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) AppDependenciesContainer *dependencies;

@end

@implementation AppCoordinator
@synthesize window;
@synthesize dependencies;

- (instancetype)init {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.dependencies = [[AppDependenciesContainer alloc] init];
    return self;
}

- (void) start {
    ViewController *vc = [[ViewController alloc] init:[[ViewControllerDataSource alloc] init:dependencies]];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    return;
}

@end
