//
//  SLBorderCollectionView.m
//  HorizontalRollingDemo
//
//  Created by 乔冬 on 16/6/7.
//  Copyright © 2016年 XinHuaTV. All rights reserved.
//

#import "SLBorderCollectionView.h"
//#define ContentCellSepLine  [UIColor colorWithRed:216/256.0 green:216/256.0 blue:216/256.0 alpha:1.0]
//#define ContentCellSepLine          [UIColor whiteColor];
@interface SLBorderCollectionView()
//边界线
//@property (nonatomic,strong) UIImageView *sepfirstView;
//@property (nonatomic,strong) UIImageView *sepSecondView;
//@property (nonatomic,strong) UIImageView *sepThirdView;
//@property (nonatomic,strong) UIImageView *sepfourView;
@end
@implementation SLBorderCollectionView
//-(instancetype)initWithFrame:(CGRect)frame{
//    if (self = [super initWithFrame:frame]) {
//        self.layer.borderColor= (__bridge CGColorRef _Nullable)([UIColor whiteColor]);
//        self.layer.borderWidth = 0.0;
//        [self addSubview:_sepfirstView];
//        [self addSubview:_sepSecondView];
//        [self addSubview:_sepThirdView];
//        [self addSubview:_sepfourView];
//    }
//    return self;
//}
//-(UIImageView *)sepfirstView{
//    if (!_sepfirstView) {
//        _sepfirstView = [[UIImageView alloc]init];
//        _sepfirstView.backgroundColor = ContentCellSepLine;
//    }
//    return _sepfirstView;
//}
//-(UIImageView *)sepSecondView{
//    if (!_sepSecondView) {
//        _sepSecondView = [[UIImageView alloc]init];
//        _sepSecondView.backgroundColor = ContentCellSepLine;
//
//    }
//    return _sepSecondView;
//}
//-(UIImageView *)sepThirdView{
//    if (!_sepThirdView) {
//        _sepThirdView = [[UIImageView alloc]init];
//        _sepThirdView.backgroundColor = ContentCellSepLine;
//
//    }
//    return _sepThirdView;
//}
//-(UIImageView *)sepfourView{
//    if (!_sepfourView) {
//        _sepfourView = [[UIImageView alloc]init];
//        _sepfourView.backgroundColor = ContentCellSepLine;
//
//    }
//    return _sepfourView;
//}
//-(void)layoutSubviews{
//    [super layoutSubviews];
//    CGFloat width = self.bounds.size.width;
//    CGFloat height = self.bounds.size.height;
//    CGFloat sepW = 0.5;
//    self.sepfirstView.frame = CGRectMake(0, 0, width, sepW);
//    self.sepSecondView.frame = CGRectMake(0, 0, sepW, height);
//    self.sepThirdView.frame = CGRectMake(0, height - sepW, width, sepW);
//    self.sepfourView.frame = CGRectMake(width - sepW, 0, sepW, height);
//}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
