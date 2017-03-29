//
//  WXLogWindow.h
//  WXScreenLog
//
//  Created by Wuxi on 17/3/29.
//  Copyright © 2017年 Wuxi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WXLogWindow : UIView


+ (instancetype)sharedInstance;

//交换隐藏和显示
- (void)toggle;

@end
