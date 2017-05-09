//
//  XMCTMediator+MineModule.m
//  ShonemeMineModule_Category
//
//  Created by 薛坤龙 on 2017/5/9.
//  Copyright © 2017年 xm. All rights reserved.
//

#import "XMCTMediator+MineModuleActions.h"

@implementation XMCTMediator (MineModuleActions)

- (UIViewController *)CTMediator_viewControllerForDetail
{
    return [self performTarget:@"XMMineMainVC" action:@"viewController" params:nil shouldCacheTarget:NO];
}

@end
