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

- (IBAction)onStartAppB:(id)sender {
    NSURL *url = [NSURL URLWithString:@"weixin://com.binart.AppAwakeA/AppAwakeB?a=1&b=1&c=2"];
    if ([[UIApplication sharedApplication] canOpenURL:url])
        [[UIApplication sharedApplication] openURL:url options:@{@"c":@"3"} completionHandler:nil];
}

- (IBAction)onStartAppC:(id)sender {
    NSURL *url = [NSURL URLWithString:@"qq://com.binart.AppAwakeA/AppAwakeC?a=1&b=1&c=2"];
    if ([[UIApplication sharedApplication] canOpenURL:url])
        [[UIApplication sharedApplication] openURL:url options:@{@"c":@"3"} completionHandler:nil];
}


@end
