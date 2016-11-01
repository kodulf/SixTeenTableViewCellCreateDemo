//
//  MainViewController.m
//  SixTeenTableViewCellCreateDemo
//
//  Created by 章银珊 on 16/10/30.
//  Copyright © 2016年 Kodulf. All rights reserved.
//

#import "MainViewController.h"
#import "FoodModel.h"
#import "FoodCell.h"

@interface MainViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong)UITableView *tableView;
@property (nonatomic,strong)NSArray *foodArray;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"Title"];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.tableView setDataSource:self];
    [self.tableView setDelegate:self];
    [self.view addSubview:self.tableView];
    
    
    // Do any additional setup after loading the view.
}

//第8分钟

-(NSArray *)foodArray{
    if(!_foodArray){//注意这了这里已定是_foodArray而不是self.foodArray
        NSString *path =[[NSBundle mainBundle] pathForResource:@"quanquan.plist" ofType:nil];
        NSArray *nsArray = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *tempArray = [NSMutableArray array];
        for (NSDictionary *dic in nsArray) {
            FoodModel *foodModel = [FoodModel modeWithDict:dic];
            [tempArray addObject:foodModel];
        }
        
        _foodArray = [tempArray copy];
    }
    
    return _foodArray;
}

#pragma mark - Table View -
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.foodArray.count;
}

//行高：
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 64;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //UITableViewCell *cell =[[UITableViewCell alloc]init];
    FoodCell *cell = [[FoodCell alloc]init];
    [cell updateCellWithModel:self.foodArray[indexPath.row]];
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
