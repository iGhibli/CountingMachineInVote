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
    _leagueLabel.text = model.league;
    _matchOrderLabel.text = model.matchOrder;
    _deadlineTimeLabel.text = [NSString stringWithFormat:@"%@",model.deadlineTime];
    _teamALabel.text = [NSString stringWithFormat:@"[%@]%@",model.hostRank, model.teamA];
    _teamBLabel.text = [NSString stringWithFormat:@"[%@]%@",model.visitRank, model.teamB];
    
    [_win0 setTitle:model.win0 forState:UIControlStateNormal];
    [_defeat0 setTitle:model.defeat0 forState:UIControlStateNormal];
    [_draw0 setTitle:model.draw0 forState:UIControlStateNormal];
    [_win setTitle:model.win forState:UIControlStateNormal];
    [_defeat setTitle:model.defeat forState:UIControlStateNormal];
    [_draw setTitle:model.draw forState:UIControlStateNormal];
    
    _concedeBallLabel.text = model.concedeBall;
    if ([model.concedeBall hasPrefix:@"-"]) {
        _concedeBallLabel.backgroundColor = [UIColor colorWithRed:0.45 green:0.67 blue:0.16 alpha:1.00];
    }else {
        _concedeBallLabel.backgroundColor = [UIColor colorWithRed:0.97 green:0.44 blue:0.09 alpha:1.00];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
