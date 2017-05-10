//
//  XMCTMediator+HomeModuleAction.m
//  ShonemeHomeModule_Category
//
//  Created by 薛坤龙 on 2017/5/10.
//  Copyright © 2017年 xm. All rights reserved.
//

#import "XMCTMediator+HomeModuleAction.h"

@implementation XMCTMediator (HomeModuleAction)

- (UIViewController *)CTMediator_HomeMain_viewController
{
    return [self performTarget:@"HomeMain" action:@"viewController" params:nil shouldCacheTarget:NO];
}

@end
