//
//  UIWindow+WindowShaking.m
//  WXScreenLog
//
//  Created by Wuxi on 17/3/29.
//  Copyright © 2017年 Wuxi. All rights reserved.
//

#import "UIWindow+WindowShaking.h"
#import "WXLogWindow.h"

@implementation UIWindow (WindowShaking)

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    [super motionBegan:motion withEvent:event];
    
    if (motion == UIEventSubtypeMotionShake)
    {
        [[WXLogWindow sharedInstance] toggle];
    }
}
@end
