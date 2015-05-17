//
//  JLNavgationController.m
//  仿汽车之家
//
//  Created by long108 on 15/5/16.
//  Copyright (c) 2015年 long108. All rights reserved.
//

#import "JLNavgationController.h"
#import "JLNavgationBar.h"
@interface JLNavgationController ()<JLNavgationBarDatasource>

@end

@implementation JLNavgationController

#pragma mark life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    JLNavgationBar *navBar = [[JLNavgationBar alloc]init];
    navBar.dataSource = self;
    navBar.backgroundColor = [UIColor redColor];
    //    NSLog(@"%@",[self valueForKeyPath:@"navigationBar"]);
    [self.view addSubview:navBar];
    self.navBar = navBar;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationBarHidden = YES;
    self.navBar.frame = CGRectMake(0, 0, self.view.frame.size.width, 64);
    
}


#pragma mark -JLNavgationBarDatasource
- (NSUInteger)numberOfItemsInNavBar:(JLNavgationBar *)navbar{
    return self.dataArray.count;
}
- (NSString *)navBar:(JLNavgationBar *)navBar titleWithIndex:(NSUInteger)index{
    
        return self.dataArray[index];
        
}

@end
