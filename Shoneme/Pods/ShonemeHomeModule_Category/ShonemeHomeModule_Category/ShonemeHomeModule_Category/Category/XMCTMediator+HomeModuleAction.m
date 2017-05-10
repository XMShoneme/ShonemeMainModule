//
//  XMCTMediator+HomeModuleAction.m
//  ShonemeHomeModule_Category
//
//  Created by 薛坤龙 on 2017/5/10.
//  Copyright © 2017年 xm. All rights reserved.
//

#import "XMCTMediator+HomeModuleAction.h"

NSString * const kCTMediatorTargetHomeMain = @"HomeMain";
NSString * const kCTMediatorActionViewControllerWithDic = @"viewControllerWithDic";



@implementation XMCTMediator (HomeModuleAction)

- (UIViewController *)CTMediator_HomeMainViewControllerWithDic:(NSDictionary *)params
{
    UIViewController *viewController = [self performTarget:kCTMediatorTargetHomeMain
                                                     action:kCTMediatorActionViewControllerWithDic
                                                     params:params
                                          shouldCacheTarget:NO];
    
    if ([viewController isKindOfClass:[UIViewController class]])
    {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
        
    } else
    {
        // 这里处理异常场景，具体如何处理取决于产品
        return [[UIViewController alloc] init];
    }
}

@end
