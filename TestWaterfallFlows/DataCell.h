//
//  DataCell.h
//  TestWaterfallFlows
//
//  Created by 007 on 16/3/25.
//  Copyright © 2016年 xu.lei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"
@interface DataCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
//显示数据
- (void)configModel:(DataModel *)model;
@end
