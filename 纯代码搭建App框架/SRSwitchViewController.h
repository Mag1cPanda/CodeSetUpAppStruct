//
//  SRSwitchViewController.h
//  纯代码搭建App框架
//
//  Created by Mag1cPanda on 16/6/17.
//  Copyright © 2016年 Mag1cPanda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
#import "SRSegmentedControl.h"

@interface SRSwitchViewController : BaseViewController

@property (nonatomic, copy) NSArray *viewControllerArray;
@property (nonatomic, copy) NSArray *titleArray;

/** 指示视图的颜色 */
@property (nonatomic, strong) UIColor *indicatorViewColor;
/** segment的背景颜色 */
@property (nonatomic, strong) UIColor *segmentBgColor;
/** segment每一项的宽 */
@property (nonatomic, assign) CGFloat itemWidth;
/** segment每一项的高 */
@property (nonatomic, assign) CGFloat itemHeight;

@end
