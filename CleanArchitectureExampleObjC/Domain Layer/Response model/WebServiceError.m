//
//  WebServiceError.m
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 31/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import "WebServiceError.h"

@interface WebServiceError()

@end

@implementation WebServiceError

- (instancetype)init:(ErrorEnum)errorEnum {
    self.errorEnum = errorEnum;
    return self;
}

@end
