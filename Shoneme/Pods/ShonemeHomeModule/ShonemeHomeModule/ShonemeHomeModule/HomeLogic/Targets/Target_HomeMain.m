//
//  Target_HomeMain.m
//  ShonemeHomeModule
//
//  Created by 薛坤龙 on 2017/5/10.
//  Copyright © 2017年 xm. All rights reserved.
//

#import "Target_HomeMain.h"
#import "HomeMainVC.h"

@implementation Target_HomeMain

- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    HomeMainVC *viewController = [[HomeMainVC alloc] init];
    return viewController;
}

@end
