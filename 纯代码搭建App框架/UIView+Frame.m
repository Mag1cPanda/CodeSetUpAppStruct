//
//  UIView+Frame.m
//  SRLibrary
//
//  Created by Mag1cPanda on 16/3/16.
//  Copyright © 2016年 Mag1cPanda. All rights reserved.
//

#import "UIView+Frame.h"


@implementation UIView (Frame)

-(void)setSrX:(CGFloat)srX{
    CGRect frame = self.frame;
    frame.origin.x = srX;
    self.frame = frame;
}

-(CGFloat)srX{
    return self.frame.origin.x;
}

-(void)setSrY:(CGFloat)srY{
    CGRect frame = self.frame;
    frame.origin.y = srY;
    self.frame = frame;
}

-(CGFloat)srY{
    return self.frame.origin.y;
}

-(void)setSrWidth:(CGFloat)srWidth{
    CGRect frame = self.frame;
    frame.size.width = srWidth;
    self.frame = frame;
}

-(CGFloat)srWidth{
    return self.frame.size.width;
}

-(void)setSrHeight:(CGFloat)srHeight{
    CGRect frame = self.frame;
    frame.size.height = srHeight;
    self.frame = frame;
}

-(CGFloat)srHeight{
    return self.frame.size.height;
}

@end
