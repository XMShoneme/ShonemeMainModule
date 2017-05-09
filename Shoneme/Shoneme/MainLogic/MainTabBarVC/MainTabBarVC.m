//
//  MainTabBarVC.m
//  Shoneme
//
//  Created by 薛坤龙 on 2017/5/5.
//  Copyright © 2017年 xm. All rights reserved.
//

#import "MainTabBarVC.h"
#import <XMBaseObjectModule/BaseNavigationViewController.h>
#import "HomeMainVC.h"
#import <ShonemeMineModule_Category/XMCTMediator+MineModuleActions.h>

@interface MainTabBarVC ()

@end

@implementation MainTabBarVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadTabBarViewController];
}

+(id) shareMainTabBarInstance
{
    static MainTabBarVC *mainController=nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mainController=[[self alloc] init];
    });
    return mainController;
}

-(void)loadTabBarViewController
{
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] =[UIColor lightGrayColor];
    
    NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    
    HomeMainVC *homePageViewController = [[HomeMainVC alloc] init];
    BaseNavigationViewController *homePageNavigation = [[BaseNavigationViewController alloc] initWithRootViewController:homePageViewController];
    homePageNavigation.tabBarItem.title=@"首页";
    
    UIViewController *mineVC = [[XMCTMediator sharedInstance] CTMediator_viewControllerForDetail];
    BaseNavigationViewController *minePageNavigation = [[BaseNavigationViewController alloc] initWithRootViewController:mineVC];
    minePageNavigation.tabBarItem.title=@"我的";
    
    [homePageNavigation.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [homePageNavigation.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];
    
    [minePageNavigation.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [minePageNavigation.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];
    
    self.delegate=self;
    self.viewControllers=@[homePageNavigation,minePageNavigation];
    self.selectedIndex=0;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
