//
//  LoginViewController.m
//  QuantitativeBureauProject
//
//  Created by 杨晓婧 on 16/3/17.
//  Copyright © 2016年 shangtong. All rights reserved.
//

#import "LoginViewController.h"
#import "MainViewController.h"
#import "RegisterViewController.h"
#import "ForgetPwdViewController.h"
@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.title = @"首页";
    [self createUI];
    [self deleteBack];
}

- (IBAction)savePwd:(id)sender {
    static BOOL isSelected = YES;
    self.savePwd.selected = isSelected;
    isSelected = !isSelected;
}

- (void)createUI{
    UIImageView * leftImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"login_name"]];
    [leftImage sizeToFit];
    self.userNameTxt.leftView = leftImage;
    self.userNameTxt.leftViewMode = UITextFieldViewModeAlways;
    
    UIImageView * rightImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"login_password"]];
    [rightImage sizeToFit];
    self.pwdTxt.leftView = rightImage;
    self.pwdTxt.leftViewMode = UITextFieldViewModeAlways;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(willShowKeyBoard:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(willHideKeyBoard:) name:UIKeyboardWillHideNotification object:nil];
}

- (void)willShowKeyBoard:(NSNotification *)notification{
    CGFloat maxY = [self.userNameTxt isFirstResponder]?(CGRectGetMaxY(self.userNameTxt.frame)):(CGRectGetMaxY(self.pwdTxt.frame));
    CGRect kbEndFrm = [notification.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    CGFloat kbY = kbEndFrm.origin.y;
    CGFloat delta = kbY - maxY;
    if(delta < 0){
        //需要往上移
        //添加个动画
        [UIView animateWithDuration:0.25 animations:^{
            self.view.transform = CGAffineTransformMakeTranslation(0, delta-10);
        }];
        
    }
}

- (void)willHideKeyBoard:(NSNotification *)notification{
    [UIView animateWithDuration:0.25 animations:^{
        self.view.transform = CGAffineTransformIdentity;
    }];
}

- (IBAction)loginAction:(id)sender {
    MainViewController *vc = [[MainViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    [self presentViewController:nav animated:YES completion:^{
    }];
}

- (IBAction)registerUserBtn:(id)sender {
    RegisterViewController *vc = [[RegisterViewController alloc] init];
    vc.title = @"注册";
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)forgetPwd:(id)sender {
    /*
    ForgetPwdViewController *vc = [[ForgetPwdViewController alloc] init];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    vc.modalPresentationStyle = 3;
    [self presentViewController:vc animated:YES completion:^{
      
    }];*/
}

- (void)deleteBack{
    UIBarButtonItem *backButtonItem = [[UIBarButtonItem alloc] init];
    backButtonItem.title = @"";
    self.navigationItem.backBarButtonItem = backButtonItem;
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
