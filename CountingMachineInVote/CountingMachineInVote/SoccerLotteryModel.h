//
//  SoccerLotteryModel.h
//  CountingMachineInVote
//
//  Created by 赛驰 on 2017/4/13.
//  Copyright © 2017年 iGhibli. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SoccerLotteryModel : NSObject

// 赛事名称
@property (nonatomic, strong) NSString *league;
// 比赛排序
@property (nonatomic, strong) NSString *matchOrder;
// 投注截止时间
@property (nonatomic, strong) NSString *deadlineTime;
// teamA
@property (nonatomic, strong) NSString *teamA;
// teamAId
@property (nonatomic, strong) NSString *teamAId;
// teamB
@property (nonatomic, strong) NSString *teamB;
// teamBId
@property (nonatomic, strong) NSString *teamBId;
// concedeBall
@property (nonatomic, strong) NSString *concedeBall;
// hostRank
@property (nonatomic, strong) NSString *hostRank;
// visitRank
@property (nonatomic, strong) NSString *visitRank;
// win0
@property (nonatomic, strong) NSString *win0;
// defeat0
@property (nonatomic, strong) NSString *defeat0;
// draw0
@property (nonatomic, strong) NSString *draw0;
// win
@property (nonatomic, strong) NSString *win;
// defeat
@property (nonatomic, strong) NSString *defeat;
// draw
@property (nonatomic, strong) NSString *draw;

- (instancetype)initSoccerLotteryModelWithDict:(NSDictionary *)dict;

@end
