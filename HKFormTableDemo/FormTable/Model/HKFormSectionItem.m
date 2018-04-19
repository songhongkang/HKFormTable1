//
//  HKFormSectionItem.m
//  HKFormTableDemo
//
//  Created by 宋宏康 on 2018/4/18.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import "HKFormSectionItem.h"

@implementation HKFormSectionItem

- (NSMutableArray <HKDisclosureIndicatorCell *>*)formRowModelCell
{
    if (!_formRowModelCell) {
        _formRowModelCell = [[NSMutableArray alloc] init];
    }
    return _formRowModelCell;
}

- (void)addCell:(HKDisclosureIndicatorCell *)cell
{
    [self.formRowModelCell addObject:cell];
}

- (NSInteger)rowCount
{
    return  self.formRowModelCell.count;
}

- (HKDisclosureIndicatorCell *)getCell:(NSInteger)section
{
    return  self.formRowModelCell[section];
}

- (void)layoutImageViewLeft:(CGFloat)offsetleft withTitleLabelOffset:(CGFloat)offsetleftTitleLabel withSectionItem:(HKFormSectionItem *)sectionItem;
{
    for (FormBaseCell *cell in sectionItem.formRowModelCell) {
        cell.leftImageViewOffset = offsetleft;
        cell.leftTitleLabel = offsetleftTitleLabel;
    }
}
@end
