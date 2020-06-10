//
//  Endpoint.h
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 30/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//
#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, EndpointEnum) {
    fetchCharacters
};

@interface Endpoint : NSObject

-(instancetype)init:(EndpointEnum)endpointEnum;
-(NSString*)path;
-(NSString*)parameters;

@end
