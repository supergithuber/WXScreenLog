//
//  WXLogWindow.m
//  WXScreenLog
//
//  Created by Wuxi on 17/3/29.
//  Copyright © 2017年 Wuxi. All rights reserved.
//

#import "WXLogWindow.h"

@interface WXLogWindow ()

@property (nonatomic, strong)UITextView *textView;

@end

@implementation WXLogWindow

+ (instancetype)sharedInstance
{
    static dispatch_once_t onceToken;
    static WXLogWindow *logWindow;
    dispatch_once(&onceToken, ^{
        logWindow = [[WXLogWindow alloc] init];
        logWindow.frame = CGRectMake(0, 0, CGRectGetWidth([[UIScreen mainScreen] bounds]), 200);
        [[[UIApplication sharedApplication] keyWindow] addSubview:logWindow];
        logWindow.hidden = YES;
    });
    return logWindow;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setup];
    }
    return self;
}
- (instancetype)init
{
    self = [super init];
    if (self)
    {
        [self setup];
    }
    return self;
}
- (void)setup
{
    _textView = [[UITextView alloc] init];
    _textView.backgroundColor = [UIColor blackColor];
    _textView.editable = NO;
    [self addSubview:_textView];
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    self.textView.frame = self.bounds;
}

- (void)toggle
{
    self.hidden = !self.hidden;
}
@end
