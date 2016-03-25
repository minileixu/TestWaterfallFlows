//
//  DataCell.m
//  TestWaterfallFlows
//
//  Created by 007 on 16/3/25.
//  Copyright © 2016年 xu.lei. All rights reserved.
//

#import "DataCell.h"

@implementation DataCell

- (void)configModel:(DataModel *)model
{
    self.titleLabel.text = model.title;
}
- (void)awakeFromNib {
    // Initialization code
}



@end
