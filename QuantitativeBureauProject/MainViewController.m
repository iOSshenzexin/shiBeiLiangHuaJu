//
//  MainViewController.m
//  QuantitativeBureauProject
//
//  Created by 杨晓婧 on 16/3/17.
//  Copyright © 2016年 shangtong. All rights reserved.
//

#import "MainViewController.h"
#import "MessageViewController.h"
#import "SiteMonitoringViewController.h"
#import "DownLoadViewController.h"
#import "RegistrationAssessmentViewController.h"
#import "SettingViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self deleteBack];
    self.navigationItem.title = @"市北量化局综合监控系统";
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
}

- (IBAction)messageBtn:(id)sender {
    MessageViewController *vc = [[MessageViewController alloc] init];
    vc.navigationItem.title = @"消息";
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)siteMonitoringBtn:(id)sender {
    SiteMonitoringViewController *vc = [[SiteMonitoringViewController alloc] init];
    vc.navigationItem.title = @"站点监控";
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)downloadTwoCodeBtn:(id)sender {
    DownLoadViewController *vc = [[DownLoadViewController alloc] init];
    vc.navigationItem.title = @"下载二维码";
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)registerBtn:(id)sender {
    RegistrationAssessmentViewController *vc = [[RegistrationAssessmentViewController alloc] init];
    vc.navigationItem.title = @"注册审核";
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)settingBtn:(id)sender {
    SettingViewController *vc = [[SettingViewController alloc] init];
    vc.navigationItem.title = @"设置";
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)deleteBack{
    UIBarButtonItem *backButtonItem = [[UIBarButtonItem alloc] init];
    backButtonItem.title = @"";
    self.navigationItem.backBarButtonItem = backButtonItem;
}


@end
