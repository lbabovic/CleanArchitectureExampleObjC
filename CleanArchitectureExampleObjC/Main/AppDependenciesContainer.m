//
//  AppDependenciesContainer.m
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 01/04/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import "AppDependenciesContainer.h"

@interface AppDependenciesContainer()

@property (retain, nonatomic) id<CharacterUseCase> characterUseCase;
@property (retain, nonatomic) id<CharacterProvider> characterProvider;

@end

@implementation AppDependenciesContainer

- (id<CharacterProvider>)characterProvider {
    if (!_characterProvider) {
        self.characterProvider = [[RickAndMortyCharacterProvider alloc] init];
    }
    return _characterProvider;
}

- (id<CharacterUseCase>)characterUseCase {
    if(!_characterProvider) {
        self.characterUseCase = [[CharacterInteractor alloc] initWithProvider:self.characterProvider];
    }
    return _characterUseCase;
}

- (id<CharacterUseCase>)getCharacterUseCase {
    return self.characterUseCase;
}

@end
