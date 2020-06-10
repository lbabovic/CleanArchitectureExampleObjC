//
//  ViewController.m
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 30/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController()

@property (strong, nonatomic) ViewControllerDataSource* dataSource;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (void) setUpTableView;

@end

@implementation ViewController
@synthesize dataSource;
@synthesize tableView;

- (instancetype)init:(ViewControllerDataSource*)dataSource {
    self = [super initWithNibName:nil bundle: nil];
    self.dataSource = dataSource;
    [self.dataSource setFeedback:self];
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpTableView];
    NSLog(@"%@", dataSource);
    [dataSource fetchData];
}

- (void)setUpTableView {
    [self.tableView registerNib:[UINib nibWithNibName:@"CharacterTableViewCell" bundle:nil] forCellReuseIdentifier:@"characterCell"];
    tableView.dataSource = dataSource;
    tableView.delegate = self;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

- (void)dataSourceUpdated {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
    });
}

@end
