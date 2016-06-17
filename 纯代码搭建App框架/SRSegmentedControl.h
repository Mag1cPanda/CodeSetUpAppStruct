//
//  SRSegmentedControl.h
//  纯代码搭建App框架
//
//  Created by Mag1cPanda on 16/6/17.
//  Copyright © 2016年 Mag1cPanda. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SRSegmentedControl;

@protocol SRSegmentedControlDelegate <NSObject>

@optional;
/** 选中某个按钮时的代理回调 */
- (void)segmentControl:(SRSegmentedControl *)segment didSelectedIndex:(NSInteger)index;

/** 指示视图滑动进度的代理回调 */
- (void)segmentControl:(SRSegmentedControl *)segment didScrolledPersent:(CGFloat)persent;

@end

@interface SRSegmentedControl : UIView

@property NSUInteger btnCount;
@property CGFloat btnWidth;
@property BOOL ifSelectedBegan;
@property (strong, nonatomic) UIButton *currentBtn;
@property (strong, nonatomic) UIView *indicatorView;
@property (copy, nonatomic) NSArray *titleArray;
@property (strong, nonatomic) NSMutableArray *buttonArray;

@property (nonatomic, strong) UIColor *indicatorColor;
@property (assign, nonatomic) id<SRSegmentedControlDelegate> delegate;

- (instancetype)initWithFrame:(CGRect)frame titles:(NSArray *)titleArray;

/** 设置segment的索引为index的按钮处于选中状态 */
- (void)setSelectedIndex:(NSInteger)index;

@end
