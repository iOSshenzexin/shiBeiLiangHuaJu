//
//  LoginViewController.h
//  QuantitativeBureauProject
//
//  Created by 杨晓婧 on 16/3/17.
//  Copyright © 2016年 shangtong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (weak, nonatomic) IBOutlet UITextField *userNameTxt;
@property (weak, nonatomic) IBOutlet UITextField *pwdTxt;
- (IBAction)loginAction:(id)sender;
- (IBAction)registerUserBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *savePwd;

@end
