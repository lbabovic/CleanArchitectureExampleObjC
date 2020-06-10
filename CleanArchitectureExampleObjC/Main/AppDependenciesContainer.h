//
//  AppDependenciesContainer.h
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 01/04/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "ViewControllerDependencies.h"
#import "CharacterInteractor.h"
#import "RickAndMortyCharacterProvider.h"

@interface AppDependenciesContainer : NSObject <ViewControllerDependencies>

@end
