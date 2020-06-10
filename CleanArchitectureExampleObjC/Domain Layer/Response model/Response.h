//
//  Response.h
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 30/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WebServiceError.h"
#import "Decodable.h"

typedef NS_ENUM(NSInteger, ResponseEnum) {
    success, error
};

@interface Response: NSObject

-(instancetype)initWithSuccess:(id)responseData;
-(instancetype)initWithError: (NSError*) responseError;
-(instancetype)initWithCustomError: (ErrorEnum) customError;

@property (nonatomic, assign) ResponseEnum responseType;
@property (retain) id responseData;
@property (retain) NSError *responseError;

@end

typedef void (^ResponseBlock) (Response *response);
