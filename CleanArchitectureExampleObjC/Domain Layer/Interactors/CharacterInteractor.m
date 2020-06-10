//
//  CharacterInteractor.m
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 01/04/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import "CharacterInteractor.h"

@interface CharacterInteractor()

@property (retain, nonatomic) id<CharacterProvider> provider;

@end

@implementation CharacterInteractor

- (instancetype)initWithProvider:(id<CharacterProvider>)provider {
    self.provider = provider;
    return self;
}

- (void)fetchCharacters:(ResponseBlock)completion {
    [self.provider fetchCharacters:completion];
}

@end
