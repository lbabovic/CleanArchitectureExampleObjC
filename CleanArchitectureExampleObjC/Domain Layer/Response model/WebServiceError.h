//
//  WebServiceError.h
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 31/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, ErrorEnum) {
    AMBIGOUS_ERROR, DECODING_ERROR, TIMEOUT_ERROR
};

@interface WebServiceError: NSError

-(instancetype)init:(ErrorEnum)errorEnum;
@property (assign, nonatomic) ErrorEnum errorEnum;

@end
