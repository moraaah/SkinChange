//
//  SkinTool.h
//  SkinChange
//
//  Created by Lidear on 17/2/22.
//  Copyright © 2017年 alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UIColor;

static NSString *const SkinColorKey = @"SkinColorKey";

@interface SkinTool : NSObject

//设置颜色
+ (void)setSkinColor:(NSString *)skinColor;

+ (UIColor *)getSkinColor;


@end
