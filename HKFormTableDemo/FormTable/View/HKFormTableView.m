//
//  HKFormTableView.m
//  HKFormTableDemo
//
//  Created by 宋宏康 on 2018/4/18.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import "HKFormTableView.h"
#import "FormBaseCell.h"
#import "HKDisclosureIndicatorCell.h"


@interface HKFormTableView() <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) NSMutableArray <HKFormSectionItem *> *sectionDataSource;
@end

@implementation HKFormTableView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style];
    if (self) {
        [self setUp];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        [self setUp];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        [self setUp];
    }
    return self;
}

- (void)addSection:(void (^)(HKFormSectionItem *))block
{
    HKFormSectionItem *sectinoItem = [[HKFormSectionItem alloc] init];
    [self.sectionDataSource addObject:sectinoItem];
    
    
    block(sectinoItem);
    
}

- (FormBaseCell *)getCurrentCell:(NSInteger)section withRow:(NSInteger)row
{
    FormBaseCell *cell = [self.sectionDataSource[section] getCell:row];
    return  cell;
}

- (void)layoutImageViewLeft:(CGFloat)offsetleft wihtTitleLabelOffset:(CGFloat)offsetleftLabel
{
    for (HKFormSectionItem *sectionItem  in self.sectionDataSource) {
        [sectionItem layoutImageViewLeft:offsetleft withTitleLabelOffset:offsetleftLabel withSectionItem:sectionItem];
    }
}

#pragma mark - tableViewDelegate && tableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.sectionDataSource[section] rowCount];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.sectionDataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger rowMax = [self.sectionDataSource[indexPath.section] rowCount];
    
    HKFormSectionItem *sectionItem = self.sectionDataSource[indexPath.section];
    HKDisclosureIndicatorCell *cell = [sectionItem getCell:indexPath.row];
    
    if (rowMax == 1) {
        cell.topBorderView.hidden = NO;
        cell.bottomBorderView.hidden = NO;
        cell.separatorBorderView.hidden = YES;
    }else if (indexPath.row == rowMax - 1){
        cell.topBorderView.hidden = YES;
        cell.bottomBorderView.hidden = NO;
        cell.separatorBorderView.hidden = YES;
    }else if (indexPath.row == 0) {
        cell.topBorderView.hidden = NO;
        cell.bottomBorderView.hidden = YES;
        cell.separatorBorderView.hidden = NO;
    }else{
        cell.topBorderView.hidden = YES;
        cell.bottomBorderView.hidden = YES;
        cell.separatorBorderView.hidden = NO;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    HKFormSectionItem *sectionItem = self.sectionDataSource[indexPath.section];
    HKDisclosureIndicatorCell *cell = [sectionItem getCell:indexPath.row];
    if (cell.onClick) {
        cell.onClick();
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    HKFormSectionItem *sectionItem = self.sectionDataSource[section];

    if (sectionItem.tableViewHeaderHeight > 0) {
        return sectionItem.tableViewHeaderHeight;
    }else{
        return tableView.sectionHeaderHeight;
    }
}
//section头部视图
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 1)];
    view.backgroundColor = [UIColor clearColor];
    return view ;
}
//section底部间距
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    HKFormSectionItem *sectionItem = self.sectionDataSource[section];
    if (sectionItem.tableViewFooterHeight > 0) {
        return sectionItem.tableViewFooterHeight;
    }else{
        return tableView.sectionHeaderHeight;
    }
}
//section底部视图
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *view=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 1)];
    view.backgroundColor = [UIColor clearColor];
    return view;
}



#pragma mark - private
- (void)setUp
{
    self.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.rowHeight = 44;
    self.delegate = self;
    self.dataSource  = self;
    self.estimatedRowHeight = 0;
    self.estimatedSectionHeaderHeight = 0;
    self.estimatedSectionFooterHeight = 0;
}

- (NSMutableArray <HKFormSectionItem *> *)sectionDataSource
{
    if (!_sectionDataSource) {
        _sectionDataSource = [[NSMutableArray alloc] init];
    }
    return _sectionDataSource;
}
@end
