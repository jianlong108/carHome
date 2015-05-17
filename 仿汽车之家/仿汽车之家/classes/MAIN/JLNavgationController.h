//
//  JLNavgationController.h
//  仿汽车之家
//
//  Created by long108 on 15/5/16.
//  Copyright (c) 2015年 long108. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JLNavgationBar;
@interface JLNavgationController : UINavigationController
@property(nonatomic,strong)JLNavgationBar *navBar;
@property(nonatomic,strong)NSArray *dataArray;
@end
