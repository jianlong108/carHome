//
//  JLNavgationBar.h
//  仿汽车之家
//
//  Created by long108 on 15/5/16.
//  Copyright (c) 2015年 long108. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JLNavgationBar;
@protocol JLNavgationBarDatasource <NSObject>
@required
- (NSUInteger)numberOfItemsInNavBar:(JLNavgationBar *)navbar;
- (NSString *)navBar:(JLNavgationBar *)navBar titleWithIndex:(NSUInteger)index;
@end

@interface JLNavgationBar : UIScrollView

@property(nonatomic,assign)CGFloat itemW;
@property(nonatomic,assign) id <JLNavgationBarDatasource> dataSource;

@end
