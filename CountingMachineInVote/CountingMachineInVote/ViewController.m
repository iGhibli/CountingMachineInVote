//
//  ViewController.m
//  CountingMachineInVote
//
//  Created by matengfei on 2017/4/6.
//  Copyright © 2017年 iGhibli. All rights reserved.
//

#import "ViewController.h"

#define kScreenW    [[UIScreen mainScreen] bounds].size.width
#define kScreenH    [[UIScreen mainScreen] bounds].size.height

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

#pragma - TableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 50;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenW, 50)];
    UIImageView *headerImageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 0, 300, 30)];
    UIImage *image = [UIImage imageNamed:@"4-2.png"];
    [headerImageView setImage:image];
    [headerView addSubview:headerImageView];
    
    NSString  *createTime = [self.keysArray objectAtIndex:section];
    createTime = [createTime stringByReplacingCharactersInRange:NSMakeRange(4, 1) withString:@"-"];
    createTime = [createTime stringByReplacingCharactersInRange:NSMakeRange(7, 1) withString:@"-"];
    
    UILabel *headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(130, 5, 150, 20)];
    headerLabel.backgroundColor = [UIColor clearColor];
    headerLabel.font = [UIFont boldSystemFontOfSize:15.0];
    headerLabel.textColor = [UIColor blueColor];
    headerLabel.text = createTime;
    [headerView addSubview:headerLabel];
    [headerLabel release];
    
    return headerView;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellID"];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
