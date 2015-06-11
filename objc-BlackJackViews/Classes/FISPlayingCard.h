//
//  FISPlayingCard.h
//  BlackJack
//
//  Created by Gan Chau on 5/28/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISPlayingCard : NSObject

@property (strong, nonatomic) NSString *suit;
@property (strong, nonatomic) NSNumber *rank;

+ (NSArray *)validRanks;
+ (NSArray *)validSuits;
- (instancetype)initWithSuit:(NSString *)suit rank:(NSNumber *)rank;

@end
