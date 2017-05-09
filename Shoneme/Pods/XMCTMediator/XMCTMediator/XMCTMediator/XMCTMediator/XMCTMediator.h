//
//  XMCTMediator.h
//  XMCTMediator
//
//  Created by 薛坤龙 on 2017/5/8.
//  Copyright © 2017年 xm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XMCTMediator : NSObject

+ (instancetype)sharedInstance;

// 远程App调用入口
- (id)performActionWithUrl:(NSURL *)url completion:(void(^)(NSDictionary *info))completion;

// 本地组件调用入口
- (id)performTarget:(NSString *)targetName action:(NSString *)actionName params:(NSDictionary *)params shouldCacheTarget:(BOOL)shouldCacheTarget;

- (void)releaseCachedTargetWithTargetName:(NSString *)targetName;

@end
