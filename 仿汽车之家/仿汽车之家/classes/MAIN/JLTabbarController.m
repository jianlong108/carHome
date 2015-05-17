//
//  JLTabbarController.m
//  仿汽车之家
//
//  Created by long108 on 15/5/16.
//  Copyright (c) 2015年 long108. All rights reserved.
//

#import "JLTabbarController.h"
#import "RecoNavController.h"

@interface JLTabbarController ()

@end

@implementation JLTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    RecoNavController *rvc = [[UIStoryboard storyboardWithName:@"Recommend" bundle:nil]instantiateInitialViewController];
    
    [self addChildViewController:rvc];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
