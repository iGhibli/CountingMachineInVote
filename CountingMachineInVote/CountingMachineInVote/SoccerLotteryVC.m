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
#import "AFNetworking.h"

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
    // 加载数据
    [self loadDatas];
}

// 加载数据
- (void)loadDatas {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:kWYCPURL parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@",responseObject);
        NSArray *tempArray = responseObject[@"matchInfo"];
        
//        if (tempArray.count < 4) {
//            [tempArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//                NSDictionary *dict = obj;
//                [self.images addObject:dict[@"image"]];
//                [self.titles addObject:dict[@"title"]];
//                [self.IDs addObject:dict[@"id"]];
//            }];
//        }else {
//            for (int i=0; i<4; i++) {
//                NSDictionary *dict = tempArray[i];
//                [self.images addObject:dict[@"image"]];
//                [self.titles addObject:dict[@"title"]];
//                [self.IDs addObject:dict[@"id"]];
//            }
//        }
//        [self.tableView reloadData];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
//        if (error.code == -1009 || error.code == -1005) {
//            MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
//            hud.mode = MBProgressHUDModeText;
//            hud.label.text = NSLocalizedString(@"网络状态不好,请检查你的网络设置", @"HUD message title");
//            hud.offset = CGPointMake(0.f, 0.f);
//            [hud hideAnimated:YES afterDelay:1.5f];
//        }
    }];
}

#pragma mark - UITableView
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
