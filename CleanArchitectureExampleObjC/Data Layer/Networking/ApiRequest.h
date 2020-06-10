//
//  ApiRequest.h
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 30/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Endpoint.h"

@interface ApiRequest : NSObject

-(instancetype)init:(EndpointEnum)endpointEnum;
-(NSURLRequest*)urlRequest;

@end
