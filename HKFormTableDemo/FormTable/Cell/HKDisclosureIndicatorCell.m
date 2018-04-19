//
//  HKDisclosureIndicatorCell.m
//  HKFormTableDemo
//
//  Created by 宋宏康 on 2018/4/18.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import "HKDisclosureIndicatorCell.h"
#import <Masonry.h>

@implementation HKDisclosureIndicatorCell

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
        
        [self setUpUI1];
    }
    return self;
}

- (void)setUpUI1
{
    _indicatorImageView = [[UIImageView alloc] init];
    _indicatorImageView.image =  [UIImage imageNamed:@"btn_right_arrow_normal"];
    [self.contentView addSubview:_indicatorImageView];
    
    [_indicatorImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView.mas_centerY);
        make.right.equalTo(@-20);
    }];
    
    _subTitleLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_subTitleLabel];
    
    [_subTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(_indicatorImageView.mas_left).equalTo(@-10);
        make.centerY.equalTo(self.contentView.mas_centerY);
    }];
    
}


@end
