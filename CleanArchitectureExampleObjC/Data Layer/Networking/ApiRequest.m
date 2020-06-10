//
//  ApiRequest.m
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 30/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import "ApiRequest.h"

@interface ApiRequest()

@property (retain, nonatomic) Endpoint* endpoint;

@end

@implementation ApiRequest
static NSString *baseUrlString = @"https://rickandmortyapi.com/";

- (instancetype)init:(EndpointEnum)endpointEnum {
    self.endpoint = [[Endpoint alloc] init:endpointEnum];
    return self;
}

- (NSURLRequest *)urlRequest {
    NSString *urlString = [NSString stringWithFormat:@"%@%@%@",  baseUrlString, [self.endpoint path], [self.endpoint parameters]];
    NSLog(@"%@", urlString);
    NSURL *url = [[NSURL alloc] initWithString:urlString];
//    if (url) {
    return [[NSURLRequest alloc] initWithURL:url];
//    } else {
//        [NSException raise:@"InvalidURL" format:@"InvalidURL %@", urlString];
//    }
}

@end
