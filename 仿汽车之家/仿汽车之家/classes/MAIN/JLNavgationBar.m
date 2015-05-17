//
//  JLNavgationBar.m
//  仿汽车之家
//
//  Created by long108 on 15/5/16.
//  Copyright (c) 2015年 long108. All rights reserved.
//

#import "JLNavgationBar.h"
#define btnW self.frame.size.width/self.count
#define btnH self.frame.size.height - 20

@interface JLNavgationBar ()
@property(nonatomic,assign)int count;
@end

@implementation JLNavgationBar

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setUp];
        
    }
    return self;
}
- (id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        [self setUp];
    }
    return self;
}
- (void)setUp{
   self.count = (int)[self.dataSource numberOfItemsInNavBar:self];
    
    
    for (int i = 0; i<self.count; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        NSString *title = [self.dataSource navBar:self titleWithIndex:i];
        btn.backgroundColor = [UIColor blueColor];
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [btn setTitle:title forState:UIControlStateNormal];
        btn.tag = i;
        [self addSubview:btn];
    }
}
- (void)layoutSubviews{
    [super layoutSubviews];
    [self setUp];
    
    CGFloat viewW = self.itemW == 0 ? btnW : self.itemW;
    
    for (UIView *view in self.subviews) {
        if (![view isKindOfClass:[UIButton class]]) continue;
        
        view.frame = CGRectMake(view.tag * viewW, 20, btnW, btnH);
    }
    self.contentSize = CGSizeMake(self.count*viewW, btnH);
}
- (void)btnClick:(UIButton *)sender{
    NSLog(@"%zd",sender.tag);
}
@end
