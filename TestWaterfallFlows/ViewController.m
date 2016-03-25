//
//  ViewController.m
//  TestWaterfallFlows
//
//  Created by 007 on 16/3/25.
//  Copyright © 2016年 xu.lei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createData];
    [self createCollectionView];
}

//数据源
- (void)createData
{
    _dataArray = [NSMutableArray array];
    for (int i=0; i<200; i++) {
        DataModel *model = [[DataModel alloc]init];
        model.title = [NSString stringWithFormat:@"第%d个标题",i+1];
        model.height = 40+arc4random()%80;
        [_dataArray addObject:model];
    }
}

//创建网格视图
- (void)createCollectionView
{   //布局对象
    MyLayout *layout = [[MyLayout alloc]initWithSectionInsets:UIEdgeInsetsMake(5, 5, 5, 5) itemSpace:10 lineSpace:10];
    //设置代理
    layout.delegate = self;
    //网格视图
    _collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height-20) collectionViewLayout:layout];
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    _collectionView.backgroundColor = [UIColor whiteColor];
    [_collectionView registerNib:[UINib nibWithNibName:@"DataCell" bundle:nil] forCellWithReuseIdentifier:@"cellId"];
    [self.view addSubview:_collectionView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark ---UICollectionViewDelegate---

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _dataArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    DataCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellId" forIndexPath:indexPath];
    DataModel *model = _dataArray[indexPath.item];
    [cell configModel:model];
    cell.backgroundColor = [UIColor grayColor];
    return cell;
}

#pragma mark ---MyLayoutDelegate---

- (NSInteger)numberOfColumns
{
    return 3;
}

- (CGFloat)heightAtIndexPath:(NSIndexPath *)indexPath
{
    DataModel *model = _dataArray[indexPath.item];
    return model.height;
}

@end

