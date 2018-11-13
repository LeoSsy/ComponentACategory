//
//  CTMediator+ModelA.h
//  ComponentACategory
//
//  Created by Jack on 2018/11/9.
//  Copyright © 2018年 bianla. All rights reserved.
//

#import "CTMediator.h"
@interface CTMediator (ModuleA)
- (UIViewController *)ModuleA_viewControllerWithCallback:(void(^)(NSString *result))callback;
@end
