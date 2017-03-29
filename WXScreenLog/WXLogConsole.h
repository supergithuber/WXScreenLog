//
//  WXLogConsole.h
//  WXScreenLog
//
//  Created by Wuxi on 17/3/29.
//  Copyright © 2017年 Wuxi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WXLogConsole : NSObject


+ (void)log:(NSString *)logString;

+ (void)error:(NSString *)errorString;

+ (void)info:(NSString *)infoString;

+ (void)warn:(NSString *)warnString;

+ (void)clear;

@end
