//
//  CharacterUseCase.h
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 01/04/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Response.h"

@protocol CharacterUseCase <NSObject>

@required
-(void) fetchCharacters: (ResponseBlock)completion;

@end
