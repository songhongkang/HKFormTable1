//
//  HKDisclosureIndicatorCell.h
//  HKFormTableDemo
//
//  Created by 宋宏康 on 2018/4/18.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import "FormBaseCell.h"

@interface HKDisclosureIndicatorCell : FormBaseCell
@property (nonatomic, strong) UILabel *subTitleLabel;
@property (nonatomic, strong) UIImageView *indicatorImageView;

@property (nonatomic, strong) void(^onClick)(void);
@end
