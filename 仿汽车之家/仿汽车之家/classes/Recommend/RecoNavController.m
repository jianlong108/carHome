//
//  RecoNavController.m
//  仿汽车之家
//
//  Created by long108 on 15/5/16.
//  Copyright (c) 2015年 long108. All rights reserved.
//

#import "RecoNavController.h"

@interface RecoNavController ()

@end

@implementation RecoNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark lazy
- (NSMutableArray *)recItemArray{
    if (_recItemArray == nil) {
        _recItemArray = [NSMutableArray array];
    }
    return _recItemArray;
}
- (NSArray *)dataArray{
    return self.recItemArray.copy;
}
@end
