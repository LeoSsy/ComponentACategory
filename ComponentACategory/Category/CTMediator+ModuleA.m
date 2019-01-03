//
//  CTMediator+ModelA.m
//  ComponentACategory
//
//  Created by Jack on 2018/11/9.
//  Copyright © 2018年 bianla. All rights reserved.
//

#import "CTMediator+ModuleA.h"
@implementation CTMediator (ModuleA)

- (UIViewController *)ModuleA_viewControllerWithCallback:(void(^)(NSString *result))callback {
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    return [self performTarget:@"ModuleA" action:@"viewController" params:params shouldCacheTarget:NO];
}

- (UIViewController *)ModuleA_viewControllerWithImage:(UIImage*)image callback:(void(^)(NSString *result))callback {
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"image"] = image?image:@"";
    params[@"callback"] = callback;
    return [self performTarget:@"ModuleA" action:@"viewController" params:params shouldCacheTarget:NO];
}
@end
