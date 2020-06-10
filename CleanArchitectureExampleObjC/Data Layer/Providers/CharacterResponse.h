//
//  CharacterResponse.h
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 30/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import "Character.h"
#import "Decodable.h"
#import <Foundation/Foundation.h>

@interface CharacterResponse: NSObject <Character, Decodable>

@end
