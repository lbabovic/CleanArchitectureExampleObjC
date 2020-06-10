//
//  CharacterProvider.h
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 30/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Response.h"

@protocol CharacterProvider <NSObject>

@required
-(void) fetchCharacters: (ResponseBlock)completion;

@end

