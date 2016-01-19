//
//  MyAlertView.m
//  AlertTest
//
//  Created by yaoyingtao on 16/1/19.
//  Copyright © 2016年 yaoyingtao. All rights reserved.
//

#import "MyAlertView.h"

@interface MyAlertView ()
@property(strong, nonatomic)UIWindow *oldWindow;

@property(strong, nonatomic)UIWindow *backWindow;
@property(weak, nonatomic)UIView *contentView;
@property(weak, nonatomic)UILabel *titleLabel;
@property(weak, nonatomic)UILabel *messageLabel;
@property(weak, nonatomic)UIButton *closeButton;

#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHigth [UIScreen mainScreen].bounds.size.height



@end

@implementation MyAlertView

- (instancetype)init{
    self = [super init];
    if (self) {
        NSInteger height = (ScreenWidth - 60)*0.6;
        self.frame = CGRectMake(30, (ScreenHigth - height)/2, ScreenWidth - 60, height);
//        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = 10;
        self.backgroundColor = [UIColor whiteColor];
        
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, self.bounds.size.width - 20, 20)];
        titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel = titleLabel;
        titleLabel.text = @"警告";
        [self addSubview:titleLabel];
        
        UILabel *msgLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 40, self.bounds.size.width - 20, self.bounds.size.height - 50)];
        msgLabel.textAlignment = NSTextAlignmentCenter;
        self.messageLabel = msgLabel;
        msgLabel.numberOfLines = 0;
        msgLabel.text = @"小明几天去上学了恍恍惚";
        [self addSubview:msgLabel];
        
        
        UIButton *closeButton = [[UIButton alloc] initWithFrame:CGRectMake(self.bounds.size.width - 15, -15, 30, 30)];
        closeButton.backgroundColor = [UIColor redColor];
        closeButton.layer.masksToBounds = YES;
        closeButton.layer.cornerRadius = 15;
        [self addSubview:closeButton];
        self.closeButton = closeButton;
        
    }
    return self;
}

- (void)show{
    self.oldWindow = [UIApplication sharedApplication].keyWindow;
    UIWindow *showWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    showWindow.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
    showWindow.windowLevel = UIWindowLevelAlert;
    [showWindow addSubview:self];
    self.backWindow = showWindow;
    [showWindow makeKeyAndVisible];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)];
    [showWindow addGestureRecognizer:tap];

}

- (void)tap{
    NSLog(@"tapp");
    self.backWindow.hidden = YES;
    self.backWindow = nil;
    [self.oldWindow makeKeyAndVisible];
}

@end
