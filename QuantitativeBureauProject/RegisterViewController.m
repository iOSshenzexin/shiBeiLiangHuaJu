//
//  RegisterViewController.m
//  QuantitativeBureauProject
//
//  Created by 杨晓婧 on 16/3/17.
//  Copyright © 2016年 shangtong. All rights reserved.
//

#import "RegisterViewController.h"
#import "MainViewController.h"
@interface RegisterViewController ()<UIAlertViewDelegate>

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createUI];
}

- (void)createUI{
    UIView *view1 = [[UIView alloc]init];
    view1.frame = CGRectMake(0, 0,5, 5);
    self.userTF.leftView=view1;
    self.userTF.leftViewMode=UITextFieldViewModeAlways;
    UIView *view2 = [[UIView alloc]init];
    view2.frame = CGRectMake(0, 0,5, 5);
    self.phoneTF.leftView=view2;
    self.phoneTF.leftViewMode=UITextFieldViewModeAlways;
    UIView *view3 = [[UIView alloc]init];
    view3.frame = CGRectMake(0, 0,5, 5);
    self.userNameTF.leftView=view3;
    self.userNameTF.leftViewMode=UITextFieldViewModeAlways;
    UIView *view4 = [[UIView alloc]init];
    view4.frame = CGRectMake(0, 0,5, 5);
    self.pwdTF.leftView= view4;
    self.pwdTF.leftViewMode=UITextFieldViewModeAlways;
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(willShowKeyBoard:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(willHideKeyBoard:) name:UIKeyboardWillHideNotification object:nil];
}

- (void)willShowKeyBoard:(NSNotification *)notification{
    if ([self.pwdTF isFirstResponder]) {
        CGFloat maxY = CGRectGetMaxY(self.pwdTF.frame);
        CGRect kbEndFrm = [notification.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
        CGFloat kbY = kbEndFrm.origin.y;
        CGFloat delta = kbY - maxY;
        if(delta < 0){
            //需要往上移,添加个动画
            [UIView animateWithDuration:0.25 animations:^{
                self.view.transform = CGAffineTransformMakeTranslation(0, delta-10);
            }];
        }
    }
}

- (void)willHideKeyBoard:(NSNotification *)notification{
    [UIView animateWithDuration:0.25 animations:^{
        self.view.transform = CGAffineTransformIdentity;
    }];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view  endEditing:YES];
}

- (IBAction)confirmBtn:(id)sender {
    MainViewController *vc = [[MainViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    vc.navigationItem.hidesBackButton = YES;
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
//    [self presentViewController:nav animated:YES completion:^{
//    }];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"恭喜你注册成功!" delegate:self cancelButtonTitle:nil otherButtonTitles: nil];
    alert.alpha = 0.5;
    [alert show];
    [self performSelector:@selector(dimissAlert:) withObject:alert afterDelay:1.0];
}

- (void)dimissAlert:(UIAlertView *)alert {
    if(alert){[alert dismissWithClickedButtonIndex:[alert cancelButtonIndex] animated:YES];}
}

- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
@end
