//
//  Response.m
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 30/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import "Response.h"

@interface Response()

@end

@implementation Response
@synthesize responseError;
@synthesize responseType;
@synthesize responseData;

- (instancetype)initWithSuccess:(id)responseData {
    self.responseData = responseData;
    self.responseType = (ResponseEnum)success;
    return self;
}

- (instancetype)initWithError:(NSError *)responseError {
    self.responseError = responseError;
    self.responseType = (ResponseEnum)error;
    return self;
}

- (instancetype)initWithCustomError:(ErrorEnum)customError {
    self.responseError = [[WebServiceError alloc] init:customError];
    self.responseType = (ResponseEnum)error;
    return self;
}

@end
