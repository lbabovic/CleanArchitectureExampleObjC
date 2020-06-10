//
//  ViewControllerDependencies.h
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 01/04/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CharacterUseCase.h"
#import "Character.h"
#import "DataSourceUpdateFeedback.h"

@protocol ViewControllerDependencies <NSObject>

@required
-(id<CharacterUseCase>) getCharacterUseCase;

@end
