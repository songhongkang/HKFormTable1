//
//  HKFormSectionItem.h
//  HKFormTableDemo
//
//  Created by 宋宏康 on 2018/4/18.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HKDisclosureIndicatorCell.h"

@interface HKFormSectionItem : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *subTitle;
@property (nonatomic, strong) NSString *imageString;
@property (nonatomic, strong) NSMutableArray <HKDisclosureIndicatorCell *> *formRowModelCell;
@property (nonatomic, assign) CGFloat tableViewFooterHeight;
@property (nonatomic, assign) CGFloat tableViewHeaderHeight;
@property (nonatomic, copy) void(^blockName)(void);


- (void)addCell:(HKDisclosureIndicatorCell*)cell;

- (NSInteger)rowCount;

- (HKDisclosureIndicatorCell *)getCell:(NSInteger)section;

- (void)layoutImageViewLeft:(CGFloat)offsetleft withTitleLabelOffset:(CGFloat)offsetleftTitleLabel withSectionItem:(HKFormSectionItem *)sectionItem;
@end
