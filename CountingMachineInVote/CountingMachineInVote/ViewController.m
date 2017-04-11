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

@property (nonatomic, strong) NSMutableArray *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataSource = [NSMutableArray arrayWithArray:@[@"足球"]];;
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (NSMutableArray *)dataSource {
    if (_dataSource == nil) {
        _dataSource = [NSMutableArray array];
    }
    return _dataSource;
}

#pragma - TableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

#if 0
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
    
    return headerView;
}
#endif

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellID"];
    cell.textLabel.text = self.dataSource[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (<#condition#>) {
        <#statements#>
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
