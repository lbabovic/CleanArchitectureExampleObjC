//
//  Character.h
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 30/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Character <NSObject>

@required
@property (readwrite) NSString* name;
@required
@property (readwrite) NSString* imageLink;

@end
