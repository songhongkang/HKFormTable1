//
//  ViewController.m
//  HKFormTableDemo
//
//  Created by 宋宏康 on 2018/4/18.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import "ViewController.h"
#import "HKFormTableView.h"
#import <Masonry.h>
#import "HKDisclosureIndicatorCell.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // sdfsdfs
//
    HKFormTableView *formTableView = [[HKFormTableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    [self.view addSubview:formTableView];
    [formTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    [formTableView addSection:^(HKFormSectionItem * sectionItem) {
        
        HKDisclosureIndicatorCell *cell0 = [HKDisclosureIndicatorCell cell];
        cell0.leftImageView.image = [UIImage imageNamed:@"img_wallet"];
        cell0.titleLabel.text = @"钱包";
        cell0.subTitleLabel.text = @"余额:¥208:00";
        cell0.onClick = ^{
            NSLog(@"111");
        };
        [sectionItem addCell:cell0];
     
        HKDisclosureIndicatorCell *cell1 = [HKDisclosureIndicatorCell cell];
        cell1.leftImageView.image = [UIImage imageNamed:@"img_Cardcoupons"];
        cell1.titleLabel.text = @"卡券";
        sectionItem.tableViewHeaderHeight = 10.0f;
        sectionItem.tableViewFooterHeight = 1.0f;
        [sectionItem addCell:cell1];
    }];
    
    [formTableView addSection:^(HKFormSectionItem *sectionItem) {
        HKDisclosureIndicatorCell *cell0 = [HKDisclosureIndicatorCell cell];
        cell0.leftImageView.image = [UIImage imageNamed:@"img_Order"];
        cell0.titleLabel.text = @"订单";
        cell0.subTitleLabel.text = @"3";
        cell0.onClick = ^{
            NSLog(@"111");
        };

        sectionItem.tableViewHeaderHeight = 10.0f;
        sectionItem.tableViewFooterHeight = 1.0f;
        [sectionItem addCell:cell0];
  
    }];
    
    [formTableView addSection:^(HKFormSectionItem *sectionItem) {
        HKDisclosureIndicatorCell *cell0 = [HKDisclosureIndicatorCell cell];
        cell0.leftImageView.image = [UIImage imageNamed:@"img_RedeemCode"];
        cell0.titleLabel.text = @"兑换码";
        cell0.subTitleLabel.text = @"3";
        cell0.onClick = ^{
            NSLog(@"111");
        };
        [sectionItem addCell:cell0];
        sectionItem.tableViewHeaderHeight = 10.0f;
        sectionItem.tableViewFooterHeight = 1.0f;
    }];
    
    [formTableView addSection:^(HKFormSectionItem *sectionItem) {
        HKDisclosureIndicatorCell *cell0 = [HKDisclosureIndicatorCell cell];
        cell0.leftImageView.image = [UIImage imageNamed:@"img_setup"];
        cell0.titleLabel.text = @"设置";
        cell0.subTitleLabel.text = @"3";
        cell0.onClick = ^{
            NSLog(@"111");
        };
        sectionItem.tableViewHeaderHeight = 10.0f;
        sectionItem.tableViewFooterHeight = 1.0f;
        [sectionItem addCell:cell0];
    }];
    
    
    [formTableView addSection:^(HKFormSectionItem *sectionItem) {
        HKDisclosureIndicatorCell *cell0 = [HKDisclosureIndicatorCell cell];
        cell0.leftImageView.image = [UIImage imageNamed:@"img_about"];
        cell0.titleLabel.text = @"关于";
        cell0.onClick = ^{
            NSLog(@"111");
        };
        sectionItem.tableViewHeaderHeight = 10.0f;
        sectionItem.tableViewFooterHeight = 1.0f;
        [sectionItem addCell:cell0];
    }];
    
    
    [formTableView layoutImageViewLeft:15 wihtTitleLabelOffset:20];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
