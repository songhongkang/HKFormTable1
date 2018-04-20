
//
//  UIImage+Tools.m
//  HKFormTableDemo
//
//  Created by 宋宏康 on 2018/4/20.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import "UIImage+Tools.h"

@implementation UIImage (Tools)
+(UIImage*)imageFromColor:(UIColor*)color size:(CGSize)size
{
    CGRect rect=CGRectMake(0.0f, 0.0f, size.width,size.height);
    UIGraphicsBeginImageContext(size);//创建图片
    CGContextRef context = UIGraphicsGetCurrentContext();//创建图片上下文
    CGContextSetFillColorWithColor(context, [color CGColor]);//设置当前填充颜色的图形上下文
    CGContextFillRect(context, rect);//填充颜色
    
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

@end
