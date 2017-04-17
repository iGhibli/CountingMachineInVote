//
//  SoccerLotteryCell.h
//  CountingMachineInVote
//
//  Created by 赛驰 on 2017/4/11.
//  Copyright © 2017年 iGhibli. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SoccerLotteryModel;

@interface SoccerLotteryCell : UITableViewCell
// 场次编号
@property (weak, nonatomic) IBOutlet UILabel *leagueLabel;
@property (weak, nonatomic) IBOutlet UILabel *matchOrderLabel;
@property (weak, nonatomic) IBOutlet UILabel *deadlineTimeLabel;
// 比赛双方
@property (weak, nonatomic) IBOutlet UILabel *teamALabel;
@property (weak, nonatomic) IBOutlet UILabel *teamBLabel;

// 不让胜平负
@property (weak, nonatomic) IBOutlet UIButton *win0;
@property (weak, nonatomic) IBOutlet UIButton *draw0;
@property (weak, nonatomic) IBOutlet UIButton *defeat0;
// 让胜平负
@property (weak, nonatomic) IBOutlet UIButton *win;
@property (weak, nonatomic) IBOutlet UIButton *draw;
@property (weak, nonatomic) IBOutlet UIButton *defeat;
// 让球
@property (weak, nonatomic) IBOutlet UILabel *concedeBallLabel;

// 模型
@property (nonatomic, strong) SoccerLotteryModel *model;

@end
