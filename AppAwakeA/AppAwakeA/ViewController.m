//
//  ViewController.m
//  AppAwakeA
//
//  Created by Seven on 2020/7/23.
//  Copyright © 2020 Seven. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface ViewController ()

//@IBOutlet @property (nonatomic, strong) UIButton *startAppBButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onStartAppB:(id)sender {// com.binart.AppAwakeA/AppAwakeB?a=1&b=1&c=2
    NSURL *url = [NSURL URLWithString:@"weixin://com.weixin.app/hgame/apiname?a=1&b=2"];
    if ([[UIApplication sharedApplication] canOpenURL:url])
        [[UIApplication sharedApplication] openURL:url options:@{@"c":@"3"} completionHandler:nil];
}

@end
