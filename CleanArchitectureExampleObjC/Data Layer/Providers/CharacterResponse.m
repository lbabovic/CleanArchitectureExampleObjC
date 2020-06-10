//
//  CharacterResponse.m
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 30/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import "CharacterResponse.h"

@interface CharacterResponse()

@end

@implementation CharacterResponse
@synthesize imageLink;
@synthesize name;

- (instancetype)initWithJSONData:(NSDictionary *)jsonResponseObject {
    self.imageLink = [NSString stringWithFormat:@"%@", jsonResponseObject[@"image"]];
    self.name = [NSString stringWithFormat:@"%@", jsonResponseObject[@"name"]];
    return self;
}

@end
