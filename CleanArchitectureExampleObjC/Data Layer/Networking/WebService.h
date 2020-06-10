//
//  WebService.h
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 30/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Response.h"
#import "NetworkSession.h"
#import "ApiRequest.h"

@interface WebService: NSObject

-(void) executeRequest: (NSURLRequest*) urlRequest withClass:(Class) classToDecode completion:(void ((^)(Response*)))callback;
-(void) cancelCurrentTask;

@end
