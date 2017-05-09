//
//  Target_XMMineMainVC.m
//  ShonemeMineModule
//
//  Created by 薛坤龙 on 2017/5/9.
//  Copyright © 2017年 xm. All rights reserved.
//

#import "Target_XMMineMainVC.h"
#import "MineMainVC.h"

@implementation Target_XMMineMainVC

- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    MineMainVC *viewController = [[MineMainVC alloc] init];
    return viewController;
}

@end
