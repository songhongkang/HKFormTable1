//
//  FormBaseCell.h
//  HKFormTableDemo
//
//  Created by 宋宏康 on 2018/4/18.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FormBaseCell : UITableViewCell

@property (nonatomic, strong) UIImageView *topBorderView;
@property (nonatomic, strong) UIImageView *separatorBorderView;
@property (nonatomic, strong) UIImageView *bottomBorderView;

@property (nonatomic, strong) UIImageView *leftImageView;
@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, assign) CGFloat leftImageViewOffset;
@property (nonatomic, assign) CGFloat leftTitleLabel;
+ (instancetype)cell;
@end
