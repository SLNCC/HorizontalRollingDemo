//
//  NSString+Exten.h
//  HorizontalRollingDemo
//
//  Created by 乔冬 on 16/6/5.
//  Copyright © 2016年 XinHuaTV. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (Exten)


/** 一般的自适应 返回高度*/
- (CGFloat)getStringHeight:(UIFont*)font width:(CGFloat)width;

/** 一般的自适应   返回Size */
- (CGSize)getStringSize:(UIFont*)font width:(CGFloat)width;


// NSDate转NSString
+ (NSString *)stringFromDate:(NSDate *)date;

// NSString转NSDate
+ (NSDate *)dateFromString:(NSString *)string;

/** 加入行间距的自适应*/
- (CGFloat)mutableAttributedStringWithFont:(UIFont *)font
                                    width:(CGFloat)width
                             andLineSpace:(CGFloat)lineSpace;

/** 设置行间距*/
+ (NSMutableAttributedString *)setLabelParagraphStyleWithString:(NSString *)changeStr andLineSpacing:(CGFloat)lineSpacing;

/**
 *  数字中间添加逗号
 *
 *  @param num 123456789
 *
 *  @return 123,456,789
 */
+(NSString *)stringAppendPointformat:(NSString *)num;

@end
