//
//  ViewControllerDataSource.m
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 07/05/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import "ViewControllerDataSource.h"

@interface ViewControllerDataSource()

@property (weak, nonatomic) id<ViewControllerDependencies> dependencies;
@property (retain, nonatomic) NSArray* characters;
- (void) fetchData;

@end

@implementation ViewControllerDataSource

@synthesize characters;
@synthesize feedback;

- (instancetype)init:(id<ViewControllerDependencies>)dependencies {
    self = [super init];
    self.dependencies = dependencies;
    return self;
}

- (void)fetchData {
    [[self.dependencies getCharacterUseCase] fetchCharacters:^(Response* response) {
        switch (response.responseType) {
            case success:
                self.characters = [[NSArray alloc] initWithArray:(NSArray*) response.responseData];
                if (self.feedback) {[self.feedback dataSourceUpdated];};
                break;
            case error:
                NSLog(@"%@", response.responseError);
                break;
        }
    }];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    CharacterTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"characterCell" forIndexPath:indexPath];
    [cell setUpCellWithCharacter:[characters objectAtIndex:indexPath.row]];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return characters.count;
}

@end
