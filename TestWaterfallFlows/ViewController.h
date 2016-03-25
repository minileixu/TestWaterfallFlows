//
//  ViewController.h
//  TestWaterfallFlows
//
//  Created by 007 on 16/3/25.
//  Copyright © 2016年 xu.lei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"
#import "DataCell.h"
#import "MyLayout.h"

@interface ViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate,MyLayoutDelegate>
{   //数据源数组
    NSMutableArray *_dataArray;
    //网格视图
    UICollectionView *_collectionView;
}


@end

