//
//  SoccerLotteryModel.m
//  CountingMachineInVote
//
//  Created by 赛驰 on 2017/4/13.
//  Copyright © 2017年 iGhibli. All rights reserved.
//

#import "SoccerLotteryModel.h"

#define kLeague         @"league"
#define kMatchOrder     @"matchOrder"
#define kDeadlineTime   @"deadlineTime"
#define kTeamA          @"teamA"
#define kTeamAId        @"teamAId"
#define kTeamB          @"teamB"
#define kTeamBId        @"teamBId"
#define kConcedeBall    @"concedeBall"
#define kHostRank       @"hostRank"
#define kVisitRank      @"visitRank"
#define kSpSpf          @"spSpf"
#define kSpRqspf        @"spRqspf"

@implementation SoccerLotteryModel

- (instancetype)initSoccerLotteryModelWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        self.league = dict[kLeague];
        self.matchOrder = dict[kMatchOrder];
        self.deadlineTime = dict[kDeadlineTime];
        self.teamA = dict[kTeamA];
        self.teamAId = dict[kTeamAId];
        self.teamB = dict[kTeamB];
        self.teamBId = dict[kTeamBId];
        self.concedeBall = dict[kConcedeBall];
        self.hostRank = dict[kHostRank];
        self.visitRank = dict[kVisitRank];
        
        self.win0 = @"0";
        self.defeat0 = @"0";
        self.draw0 = @"0";
        
        self.win = @"0";
        self.defeat = @"0";
        self.draw = @"0";

        NSString *spSpf = dict[kSpSpf];
        if ([spSpf isKindOfClass:[NSNull class]]) {
            spSpf = @"";
        }
        if (spSpf != nil && ![spSpf isEqualToString:@""]) {
            NSArray *spSpfArray = [spSpf componentsSeparatedByString:@" "];
            if (spSpfArray.count == 3) {
                self.win0 = spSpfArray[0];
                self.defeat0 = spSpfArray[1];
                self.draw0 = spSpfArray[2];
            }
        }
        NSString *spRqspf = dict[kSpRqspf];
        if ([spRqspf isKindOfClass:[NSNull class]]) {
            spRqspf = @"";
        }
        if (spRqspf != nil && ![spRqspf isEqualToString:@""]) {
            NSArray *spRqspfArray = [spRqspf componentsSeparatedByString:@" "];
            if (spRqspfArray.count == 3) {
                self.win = spRqspfArray[0];
                self.defeat = spRqspfArray[1];
                self.draw = spRqspfArray[2];
            }
        }
    }
    return self;
}

@end
