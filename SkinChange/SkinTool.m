//
//  SkinTool.m
//  SkinChange
//
//  Created by Lidear on 17/2/22.
//  Copyright © 2017年 alex. All rights reserved.
//

#import "SkinTool.h"
#import <UIKit/UIKit.h>

static NSString *SkinColor;

@implementation SkinTool

+ (void)initialize {
    NSString *value = [[NSUserDefaults standardUserDefaults] objectForKey:SkinColorKey];
    if (value == nil) {
        value = @"red";
    }
    SkinColor = value;
}

+ (void)setSkinColor:(NSString *)skinColor {
    SkinColor = skinColor;
    [[NSUserDefaults standardUserDefaults] setObject:SkinColor forKey:SkinColorKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (UIColor *)getSkinColor {
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"Skin.plist" ofType:nil];
    NSDictionary *skinAllDict = [NSDictionary dictionaryWithContentsOfFile:plistPath];
    NSDictionary *skinDict = [skinAllDict objectForKey:[SkinColor stringByAppendingString:@"skin"]];
    NSString *colorStr = [skinDict objectForKey:@"bgColor"];
    NSArray *colorArr = [colorStr componentsSeparatedByString:@","];
    NSInteger red = [colorArr[0] integerValue];
    NSInteger green = [colorArr[1] integerValue];
    NSInteger blue = [colorArr[2] integerValue];
    return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:1];
}

@end
