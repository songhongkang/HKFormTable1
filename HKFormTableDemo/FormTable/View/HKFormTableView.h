//
//  HKFormTableView.h
//  HKFormTableDemo
//
//  Created by 宋宏康 on 2018/4/18.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HKFormSectionItem.h"

@interface HKFormTableView : UITableView

- (void)addSection:(void(^)(HKFormSectionItem *))block;

- (FormBaseCell *)getCurrentCell:(NSInteger)section withRow:(NSInteger)row;

- (void)layoutImageViewLeft:(CGFloat)offsetleft wihtTitleLabelOffset:(CGFloat)offsetleftLabel;
@end
