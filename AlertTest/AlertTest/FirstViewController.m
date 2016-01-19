//
//  FirstViewController.m
//  AlertTest
//
//  Created by yaoyingtao on 16/1/19.
//  Copyright © 2016年 yaoyingtao. All rights reserved.
//

#import "FirstViewController.h"
#import "MyAlertView.h"

@interface FirstViewController ()
@property(strong, nonatomic)MyAlertView *alertView;


@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    MyAlertView *alertView = [[MyAlertView alloc] init];
    [alertView show];
}

@end
