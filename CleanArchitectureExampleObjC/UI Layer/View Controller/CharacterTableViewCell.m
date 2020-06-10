//
//  CharacterTableViewCell.m
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 07/05/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import "CharacterTableViewCell.h"
#import "Character.h"

@interface CharacterTableViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *characterImageView;
@property (weak, nonatomic) IBOutlet UILabel *characterNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *characterAgeLabel;

@end

@implementation CharacterTableViewCell

@synthesize characterImageView;
@synthesize characterNameLabel;
@synthesize characterAgeLabel;


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

- (void)setUpCellWithCharacter:(NSObject *)character {
    if (![character conformsToProtocol:@protocol(Character)]) {
        NSLog(@"CharacterTableViewCell can only be set up using a Character class object!");
        return;
    }
    NSObject<Character> *characterObject = (NSObject<Character> *) character;
    characterNameLabel.text = characterObject.name;
    characterAgeLabel.text = @"name not implemented";
    
}

@end
