//
//  CharacterInteractor.h
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 01/04/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CharacterProvider.h"
#import "CharacterUseCase.h"

@interface CharacterInteractor : NSObject <CharacterUseCase>

-(instancetype)initWithProvider: (id<CharacterProvider>) provider;

@end
