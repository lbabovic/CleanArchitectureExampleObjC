//
//  Endpoint.m
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 30/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import "Endpoint.h"

@interface Endpoint()

@property (nonatomic, assign) EndpointEnum endpoint;

@end

@implementation Endpoint

- (instancetype)init:(EndpointEnum)endpointEnum {
    self.endpoint = endpointEnum;
    return self;
}

- (NSString *)path {
    switch (self.endpoint) {
        case fetchCharacters:
            return @"api/";
        default:
            return @"";
    }
}

- (NSString *)parameters {
    switch (self.endpoint) {
        case fetchCharacters:
            return @"character/";
        default:
            return @"";
    }
}

@end
