//
//  SRSegmentedControl.m
//  纯代码搭建App框架
//
//  Created by Mag1cPanda on 16/6/17.
//  Copyright © 2016年 Mag1cPanda. All rights reserved.
//

#import "TheaterViewController.h"

@interface TheaterViewController ()

@end

@implementation TheaterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNaviTitle:@"影院" size:16];
    [self setLeftNaviItemWithTitle:@"苏州 >" size:12 imageName:nil];
    [self setRightNaviItemWithTitle:nil imageName:@"btn_search.png"];
}


@end
