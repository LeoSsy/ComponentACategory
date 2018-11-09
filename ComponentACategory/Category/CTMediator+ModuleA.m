//
//  CTMediator+ModelA.m
//  ComponentACategory
//
//  Created by Jack on 2018/11/9.
//  Copyright © 2018年 bianla. All rights reserved.
//

#import "CTMediator+ModelA.h"

@implementation CTMediator (ModuleA)
- (UIViewController *)ModuleB_viewControllerWithCallback:(void(^)(NSString *result))callback {
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    return [self performTarget:@"ModuleA" action:@"viewController" params:params shouldCacheTarget:NO];
}
@end
