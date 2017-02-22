//
//  ViewController.m
//  SkinChange
//
//  Created by Lidear on 17/2/22.
//  Copyright © 2017年 alex. All rights reserved.
//

#import "ViewController.h"
#import "SkinTool.h"

@interface ViewController ()

@property (nonatomic, strong) CALayer *basicLayer;

@end


@implementation ViewController

- (CALayer *)basicLayer {
    if (!_basicLayer) {
        _basicLayer = [[CALayer alloc] init];
        _basicLayer.bounds = CGRectMake(0, 0, 100, 100);
        _basicLayer.position = CGPointMake(100, 100);
        _basicLayer.anchorPoint = CGPointMake(0, 0);
        _basicLayer.backgroundColor = [SkinTool getSkinColor].CGColor;
        _basicLayer.cornerRadius = 10;
    }
    return _basicLayer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view.layer addSublayer:self.basicLayer];
        
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)changeSkin:(id)sender {
    UIButton *btn = (UIButton *)sender;
    NSString *color = [btn currentTitle];
    [SkinTool setSkinColor:color];
    _basicLayer.backgroundColor = [SkinTool getSkinColor].CGColor;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
