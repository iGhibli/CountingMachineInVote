//
//  MainVC.m
//  CountingMachineInVote
//
//  Created by 赛驰 on 2017/4/13.
//  Copyright © 2017年 iGhibli. All rights reserved.
//

#import "MainVC.h"
#import "UINavigationBar+Awesome.h"

#define NAVBAR_CHANGE_POINT 50

@interface MainVC ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *dataSource;
@property (nonatomic, strong) NSArray *vcIDs;

@end

@implementation MainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataSource = @[@"足球", @"篮球", @"选举", @"统计"];
    self.vcIDs = @[@"SoccerLotteryVCID"];
    
    self.tableView.dataSource = self;
    [self.navigationController.navigationBar lt_setBackgroundColor:[UIColor clearColor]];
    self.edgesForExtendedLayout = UIRectEdgeNone;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.tableView.delegate = self;
    [self scrollViewDidScroll:self.tableView];
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.tableView.delegate = nil;
    [self.navigationController.navigationBar lt_reset];
}

#pragma - TableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return kScreenW/600*405;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenW, kScreenW/600*405)];
    UIImageView *headerImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, kScreenW, kScreenW/600*405)];
    UIImage *image = [UIImage imageNamed:@"hellodata.jpg"];
    [headerImageView setImage:image];
    [headerView addSubview:headerImageView];
    return headerView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellID"];
    cell.textLabel.text = self.dataSource[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row > 0) {
        return;
    }
    UIStoryboard *mainSB = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *VC = [mainSB instantiateViewControllerWithIdentifier:self.vcIDs[indexPath.row]];
    [self.navigationController pushViewController:VC animated:YES];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    UIColor * color = [UIColor redColor];
    CGFloat offsetY = scrollView.contentOffset.y;
    if (offsetY > NAVBAR_CHANGE_POINT) {
        CGFloat alpha = MIN(1, 1 - ((NAVBAR_CHANGE_POINT + 64 - offsetY) / 64));
        [self.navigationController.navigationBar lt_setBackgroundColor:[color colorWithAlphaComponent:alpha]];
    } else {
        [self.navigationController.navigationBar lt_setBackgroundColor:[color colorWithAlphaComponent:0]];
    }
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
