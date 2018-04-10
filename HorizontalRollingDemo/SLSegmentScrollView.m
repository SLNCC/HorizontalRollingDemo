//
//  SLSegmentScrollView.m
//  HorizontalRollingDemo
//
//  Created by 乔冬 on 16/6/5.
//  Copyright © 2016年 XinHuaTV. All rights reserved.
//

#import "SLSegmentScrollView.h"
#import "SLScrollCollectionViewCell.h"
#import "SLBorderCollectionView.h"
#import "NSString+SLCategory.h"
@interface SLSegmentScrollView ()<UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (strong, nonatomic) SLBorderCollectionView *titleCollectionView;

@end

@implementation SLSegmentScrollView
static NSString * const slScrollCell = @"slScrollCell";

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        flowLayout.minimumInteritemSpacing = 0;
        flowLayout.minimumLineSpacing = 0;
        flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
//        flowLayout.sectionHeadersPinToVisibleBounds = NO;
//        CGFloat itemsH = ([[UIScreen mainScreen] bounds].size.width )/ 4;
//        flowLayout.itemSize = CGSizeMake(itemsH, self.bounds.size.height);
        
        self.titleCollectionView = [[SLBorderCollectionView  alloc] initWithFrame:CGRectMake(0.5, 0.5, self.bounds.size.width-1, self.bounds.size.height-1) collectionViewLayout:flowLayout];
        self.titleCollectionView.showsHorizontalScrollIndicator = NO;
        self.titleCollectionView.showsVerticalScrollIndicator = NO;
        [self.titleCollectionView registerClass:[SLScrollCollectionViewCell class] forCellWithReuseIdentifier:slScrollCell];
        self.titleCollectionView.delegate = self;
        self.titleCollectionView.dataSource = self;
        self.titleCollectionView.bounces = NO;
        self.titleCollectionView.backgroundColor = [UIColor whiteColor];
        self.titleCollectionView.showsHorizontalScrollIndicator = NO;
        self.titleCollectionView.showsVerticalScrollIndicator = NO;
        [self addSubview:self.titleCollectionView];
    }
    return self;
}

-(NSArray *)titleArray
{
    if (!_titleArray) {
        self.titleArray = [NSArray  array];
        
    }
    return _titleArray;
}
- (void)setSelectedSegmentIndex:(NSUInteger)index animated:(BOOL)animated {
    NSIndexPath *indexPath = [NSIndexPath indexPathForItem:index inSection:0];
    [self.titleCollectionView selectItemAtIndexPath:indexPath animated:YES scrollPosition:UICollectionViewScrollPositionCenteredHorizontally];
}
#pragma mark - <UICollectionViewDelegate,UICollectionViewDataSource>
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    NSLog(@"%ld",self.titleArray.count);
    return self.titleArray.count;
}

- (CGSize )collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    CGSize itemSize = [self.titleArray[indexPath.row] getStringSize:[UIFont systemFontOfSize:14] width:self.bounds.size.width];
//    return CGSizeMake(itemSize.width + 20, itemSize.height + 20);
    return CGSizeMake(itemSize.width + 20, self.bounds.size.height -2);
}
//- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
//
//}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    return 0.0;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    return 0.0;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    SLScrollCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:slScrollCell forIndexPath:indexPath];
    cell.title =  self.titleArray[indexPath.row];
    return cell;
}


-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    if (self.IndexChangeBlock) {
        self.IndexChangeBlock(indexPath.row);
    }
    [self.titleCollectionView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];

}

@end
