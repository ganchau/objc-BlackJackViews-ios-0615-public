//
//  FISBlackJackGameViewController.m
//  objc-BlackJackViews
//
//  Created by Gan Chau on 6/11/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "FISBlackjackGameViewController.h"

@interface FISBlackjackGameViewController ()
@property (strong, nonatomic) NSArray *cardArray;

@end

@implementation FISBlackjackGameViewController

- (void)updateUI
{
    for (UILabel *card in self.cardArray) {
        card.text = @"";
        card.hidden = YES;
    }

    for (NSUInteger i = 0; i < self.blackjackGame.hand.count; i++) {
        UILabel *card = self.cardArray[i];
        card.text = [self.blackjackGame.hand[i] description];
        card.hidden = NO;
    }
    if ([self.blackjackGame isBlackjack]) {
        self.resultLabel.text = @"Blackjack!";
        //self.hitButton.enabled = NO;

    } else if ([self.blackjackGame isBusted]) {
        self.resultLabel.text = @"Busted!";
        //self.hitButton.enabled = NO;

    } else {
        self.resultLabel.text = @"";
    }
    self.scoreLabel.text = [self.blackjackGame.handScore stringValue];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.cardArray = @[self.card1, self.card2, self.card3, self.card4, self.card5];
    
    self.blackjackGame = [[FISBlackjackGame alloc] init];
    [self.blackjackGame deal];
    [self updateUI];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)hit:(UIButton *)sender
{
    if (![self.blackjackGame isBlackjack] && ![self.blackjackGame isBusted]) {
        if (self.blackjackGame.hand.count < 5) {
            [self.blackjackGame hit];
            [self updateUI];
        }
        
        NSLog(@"HIT!");
    }
}

- (IBAction)deal:(UIButton *)sender
{
    self.blackjackGame = [[FISBlackjackGame alloc] init];
    self.scoreLabel.text = 0;
    self.resultLabel.text = @"";
    //self.hitButton.enabled = YES;
    
    [self.blackjackGame deal];
    [self updateUI];
    
    NSLog(@"Deal");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
