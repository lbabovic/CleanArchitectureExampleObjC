//
//  DecodingClass.h
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 30/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//
#import <Foundation/Foundation.h>

@protocol Decodable <NSObject>

@required
-(instancetype)initWithJSONData: (NSObject*) jsonResponseObject;

@end
