//
//  SettingViewController.m
//  QuantitativeBureauProject
//
//  Created by 杨晓婧 on 16/3/17.
//  Copyright © 2016年 shangtong. All rights reserved.
//
#import "SettingViewController.h"
#import "LoginViewController.h"
#import "RegisterViewController.h"
@interface SettingViewController ()

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)exitBtn:(id)sender {
    for (UIViewController *controller in self.navigationController.viewControllers) {
        if ([controller isKindOfClass:[RegisterViewController class]]) {
            [self.navigationController popToViewController:self.navigationController.viewControllers[0] animated:YES];
        }else{
            [self dismissViewControllerAnimated:YES completion:^{
            }];
        }
    }
//    LoginViewController *vc = [[LoginViewController alloc] init];
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
//    [[UIApplication sharedApplication] keyWindow].rootViewController = nav;
//  vc.navigationController.navigationBarHidden = NO;
}

@end
