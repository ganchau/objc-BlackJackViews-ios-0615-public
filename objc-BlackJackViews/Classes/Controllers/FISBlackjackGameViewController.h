//
//  FISBlackJackGameViewController.h
//  objc-BlackJackViews
//
//  Created by Gan Chau on 6/11/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISBlackjackGame.h"

@interface FISBlackjackGameViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *card1;
@property (weak, nonatomic) IBOutlet UILabel *card2;
@property (weak, nonatomic) IBOutlet UILabel *card3;
@property (weak, nonatomic) IBOutlet UILabel *card4;
@property (weak, nonatomic) IBOutlet UILabel *card5;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (strong, nonatomic) FISBlackjackGame *blackjackGame;
@property (weak, nonatomic) IBOutlet UIButton *hitButton;
@property (weak, nonatomic) IBOutlet UIButton *dealButton;

- (IBAction)hit:(UIButton *)sender;
- (IBAction)deal:(UIButton *)sender;
- (void)updateUI;
@end
