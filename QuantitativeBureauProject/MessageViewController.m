//
//  MessageViewController.m
//  QuantitativeBureauProject
//
//  Created by 杨晓婧 on 16/3/17.
//  Copyright © 2016年 shangtong. All rights reserved.
//

#import "MessageViewController.h"

@interface MessageViewController ()

@end

@implementation MessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self deleteBack];
}

- (void)deleteBack{
    UIBarButtonItem *backButtonItem = [[UIBarButtonItem alloc] init];
    backButtonItem.title = @"";
    self.navigationItem.backBarButtonItem = backButtonItem;
}

@end
