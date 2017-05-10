//
//  HomeMainVC.m
//  Shoneme
//
//  Created by 薛坤龙 on 2017/5/5.
//  Copyright © 2017年 xm. All rights reserved.
//

#import "HomeMainVC.h"

@interface HomeMainVC ()

@property (nonatomic,copy) NSString *homeID;

@end

@implementation HomeMainVC

#pragma mark - life cycle

- (instancetype)initWithHomeID:(NSString *)homeId
{
    if (self = [super init])
    {
        _homeID = homeId;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"首页";
    
    NSLog(@"homeid:%@",_homeID);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
   
}

@end
