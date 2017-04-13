//
//  SoccerLotteryVC.m
//  CountingMachineInVote
//
//  Created by 赛驰 on 2017/4/13.
//  Copyright © 2017年 iGhibli. All rights reserved.
//

#import "SoccerLotteryVC.h"
#import "SoccerLotteryCell.h"
#import "SoccerLotteryModel.h"

@interface SoccerLotteryVC ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation SoccerLotteryVC
static NSString *slCellID = @"SLCellID";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerNib:[UINib nibWithNibName:@"SoccerLotteryCell" bundle:nil] forCellReuseIdentifier:slCellID];
    self.edgesForExtendedLayout = UIRectEdgeNone;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return kScreenW/3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SoccerLotteryCell *cell = [tableView dequeueReusableCellWithIdentifier:slCellID forIndexPath:indexPath];
    cell.model = nil;
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
