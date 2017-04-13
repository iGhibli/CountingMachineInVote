//
//  SoccerLotteryCell.m
//  CountingMachineInVote
//
//  Created by 赛驰 on 2017/4/11.
//  Copyright © 2017年 iGhibli. All rights reserved.
//

#import "SoccerLotteryCell.h"
#import "SoccerLotteryModel.h"

@implementation SoccerLotteryCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setModel:(SoccerLotteryModel *)model {
    _model = model;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
