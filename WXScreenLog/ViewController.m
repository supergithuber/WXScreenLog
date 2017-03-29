//
//  ViewController.m
//  WXScreenLog
//
//  Created by Wuxi on 17/3/29.
//  Copyright © 2017年 Wuxi. All rights reserved.
//

#import "ViewController.h"
#import "WXLogConsole.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [WXLogConsole log:@"log"];
    [WXLogConsole warn:@"warn"];
    [WXLogConsole error:@"error"];
    [WXLogConsole info:@"info"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
