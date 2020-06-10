//
//  RickAndMortyCharacterProvider.m
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 30/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import "RickAndMortyCharacterProvider.h"

@interface RickAndMortyCharacterProvider()

@property (retain, nonatomic) WebService* webService;

@end

@implementation RickAndMortyCharacterProvider

- (instancetype)init
{
    self = [super init];

    if (self) {
        self.webService = [[WebService alloc] init];
    }
    return self;
}

- (void)fetchCharacters:(ResponseBlock)completion {
    NSURLRequest* request = [[[ApiRequest alloc] init:fetchCharacters] urlRequest];
    if (!request){completion([[Response alloc] initWithCustomError:AMBIGOUS_ERROR]);return;};    
    [self.webService executeRequest:request withClass:CharacterResponse.class completion:^(Response* response) {
        switch (response.responseType) {
            case success:
                completion([[Response alloc] initWithSuccess:response.responseData]);
                break;
            case error:
                completion([[Response alloc] initWithError:response.responseError]);
                break;
        }
    }];
}

@end
