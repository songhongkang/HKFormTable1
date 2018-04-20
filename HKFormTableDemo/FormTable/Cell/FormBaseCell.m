//
//  FormBaseCell.m
//  HKFormTableDemo
//
//  Created by 宋宏康 on 2018/4/18.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import "FormBaseCell.h"
#import <Masonry.h>
#import "UIImage+Tools.h"


#define FT_COLOR(r, g, b) FT_COLOR_A(r, g, b, 1)
#define FT_COLOR_GRAY(value) FT_COLOR(value, value, value)
#define FT_COLOR_A(r, g, b, a) [UIColor colorWithRed:(r) / 255.0 green:(g) / 255.0 blue:(b) / 255.0 alpha:a]

@interface FormBaseCell ()

@end


@implementation FormBaseCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        [self setUpUI];
    }
    return self;
}

- (void)setUpUI
{
    _topBorderView = [[UIImageView alloc] init];
    _topBorderView.image = [UIImage imageFromColor:FT_COLOR_GRAY(224) size:CGSizeMake([UIScreen mainScreen].bounds.size.width, 1)];
    
    [self.contentView addSubview:_topBorderView];
    [_topBorderView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.equalTo(self.contentView);
        make.height.equalTo(@1);
    }];
    
 
    _bottomBorderView = [[UIImageView alloc] init];
    _bottomBorderView.image = [UIImage imageFromColor:FT_COLOR_GRAY(224) size:CGSizeMake([UIScreen mainScreen].bounds.size.width, 1)];

    [self.contentView addSubview:_bottomBorderView];
    [_bottomBorderView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.right.equalTo(self.contentView);
        make.height.equalTo(@1);
    }];
    
    _leftImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_leftImageView];
    
    [_leftImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@0);
        make.centerY.equalTo(self.contentView.mas_centerY);
    }];
    
    _titleLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_titleLabel];
    
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.equalTo(@0);
        make.left.equalTo(_leftImageView.mas_right).offset(0);
    }];
    
    _separatorBorderView = [[UIImageView alloc] init];
    _separatorBorderView.image = [UIImage imageFromColor:FT_COLOR_GRAY(224) size:CGSizeMake([UIScreen mainScreen].bounds.size.width, 1)];
    [self.contentView addSubview:_separatorBorderView];
    [_separatorBorderView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.right.equalTo(self.contentView);
        make.height.equalTo(@1);
        make.left.equalTo(_titleLabel.mas_left);
    }];
    
}


- (void)setLeftImageViewOffset:(CGFloat)leftImageViewOffset
{
    [_leftImageView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.left.mas_offset(leftImageViewOffset);
    }];
}

- (void)setLeftTitleLabel:(CGFloat)leftTitleLabel
{
    [_titleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_leftImageView.mas_right).offset(leftTitleLabel);
    }];
}

+ (instancetype)cell {
    
    
    return [[self alloc] initWithStyle:UITableViewCellStyleDefault
                       reuseIdentifier:nil];
}

@end
