//
//  NetworkSession.h
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 30/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkSession: NSObject

-(instancetype)init;
-(instancetype)init:(double*) timeoutValue;
-(void) performRequest: (NSURLRequest*) request withCompletionBlock:(void ((^)( NSData*, NSURLResponse*, NSError* )))completionBlock;
-(void) cancelTask;

@end
