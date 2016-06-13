//
//  RegistrationAssessmentViewController.m
//  QuantitativeBureauProject
//
//  Created by 杨晓婧 on 16/3/17.
//  Copyright © 2016年 shangtong. All rights reserved.
//

#import "RegistrationAssessmentViewController.h"
#import "SecondRegisterViewController.h"
@interface RegistrationAssessmentViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation RegistrationAssessmentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self deleteBack];
}

- (void)deleteBack{
    UIBarButtonItem *backButtonItem = [[UIBarButtonItem alloc] init];
    backButtonItem.title = @"";
    self.navigationItem.backBarButtonItem = backButtonItem;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"cellid";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellID];
    }
    cell.textLabel.text = @"等待审核";
    cell.textLabel.font = [UIFont systemFontOfSize:18];
    cell.detailTextLabel.text = @"2016.4.10";
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
     SecondRegisterViewController *vc = [[SecondRegisterViewController alloc] init];
    vc.navigationItem.title = @"注册审核详情";
    [self.navigationController pushViewController:vc animated:YES];
}

@end
