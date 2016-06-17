//
//  BaseViewController.h
//  纯代码搭建App框架
//
//  Created by Mag1cPanda on 16/6/17.
//  Copyright © 2016年 Mag1cPanda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

- (void)leftItemTapped;
- (void)rightItemTapped;

- (void)setLeftNaviItemWithTitle:(NSString *)title imageName:(NSString *)imageName;
- (void)setRightNaviItemWithTitle:(NSString *)title imageName:(NSString *)imageName;
- (void)setLeftNaviItemWithTitle:(NSString *)title size:(CGFloat)size imageName:(NSString *)imageName;
- (void)setNaviTitle:(NSString *)title size:(CGFloat)size;

@end
