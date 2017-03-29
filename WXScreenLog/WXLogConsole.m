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
    NSLog(@"%@", infoString);
}

+ (void)warn:(NSString *)warnString
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self updateText:warnString color:[UIColor yellowColor]];
    });
    NSLog(@"%@", warnString);
}

+ (void)clear
{
    [WXLogWindow sharedInstance].contentString = nil;
}

+ (void)updateText:(NSString *)text color:(UIColor *)color
{
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"hh:mm:ss SSS";
    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //新加上的
    NSString *appendString = [NSString stringWithFormat:@"\n %@ : %@",dateString, text];
    NSDictionary *attributedDictionary = @{NSForegroundColorAttributeName : color};
    NSMutableAttributedString *attributedAppendString = [[NSMutableAttributedString alloc] initWithString:appendString attributes:attributedDictionary];
    //原来的
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]initWithAttributedString:[WXLogWindow sharedInstance].contentString];
    [attributedString appendAttributedString:attributedAppendString];
    
    //设置新的
    [WXLogWindow sharedInstance].contentString = attributedString;
}

@end
