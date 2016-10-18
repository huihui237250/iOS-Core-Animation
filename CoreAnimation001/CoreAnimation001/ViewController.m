//
//  ViewController.m
//  CoreAnimation001
//
//  Created by Banning on 2016/10/17.
//  Copyright © 2016年 Banning. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize layerView;
    
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    self.layerView = [[UIView alloc] initWithFrame:CGRectMake((CGRectGetWidth(self.view.frame) - 200 )/2, (CGRectGetHeight(self.view.frame) - 200 )/2, 200, 200)];
    self.layerView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.layerView];
    
    //create sublayer
    CALayer *blueLayer = [CALayer layer];
    blueLayer.frame = CGRectMake(50.0f, 50.0f, 100.0f, 100.0f);
    blueLayer.backgroundColor = [UIColor blueColor].CGColor;
    //add it to our view
    [self.layerView.layer addSublayer:blueLayer];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
