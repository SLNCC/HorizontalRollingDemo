//
//  SLSegmentScrollView.h
//  HorizontalRollingDemo
//
//  Created by 乔冬 on 16/6/5.
//  Copyright © 2016年 XinHuaTV. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SLSegmentScrollView : UIView
@property (copy, nonatomic) NSArray *titleArray;

@property (nonatomic, copy) void(^IndexChangeBlock )(NSInteger index);
/** 设置选中第几个*/
- (void)setSelectedSegmentIndex:(NSUInteger)index animated:(BOOL)animated ;
@end
