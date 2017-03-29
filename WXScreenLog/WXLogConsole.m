//
//  WXLogConsole.m
//  WXScreenLog
//
//  Created by Wuxi on 17/3/29.
//  Copyright © 2017年 Wuxi. All rights reserved.
//

#import "WXLogConsole.h"
#import "WXLogWindow.h"

@interface WXLogConsole ()

@property (nonatomic, strong)WXLogWindow *logWindow;

@end

@implementation WXLogConsole

+ (void)log:(NSString *)logString
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self updateText:logString color:[UIColor greenColor]];
    });
    //同时在控制台打出来
    NSLog(@"%@", logString);
}

+ (void)error:(NSString *)errorString
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self updateText:errorString color:[UIColor redColor]];
    });
    NSLog(@"%@", errorString);
}

+ (void)info:(NSString *)infoString
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self updateText:infoString color:[UIColor whiteColor]];
    });
}

+ (void)warn:(NSString *)warnString
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self updateText:warnString color:[UIColor yellowColor]];
    });
}

+ (void)clear
{
    
}

+ (void)updateText:(NSString *)text color:(UIColor *)color
{
    
}

@end
