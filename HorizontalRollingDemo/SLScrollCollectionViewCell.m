//
//  SLScrollCollectionViewCell.m
//  HorizontalRollingDemo
//
//  Created by 乔冬 on 16/6/6.
//  Copyright © 2016年 XinHuaTV. All rights reserved.
//

#import "SLScrollCollectionViewCell.h"
@interface SLScrollCollectionViewCell()
@property (nonatomic,strong) UIImageView *firstImgView;//图片

@property (nonatomic,strong) UILabel *textLabel;//标题
@end;
@implementation SLScrollCollectionViewCell
-(instancetype)initWithFrame:(CGRect)frame{
    if (self =[super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        self.layer.borderColor= (__bridge CGColorRef _Nullable)([UIColor whiteColor]);
        self.layer.borderWidth = 0.0;
        [self addSubview:self.firstImgView];
        [self addSubview:self.textLabel];
    }
    return self;
}
-(UIImageView *)firstImgView{
    if (!_firstImgView) {
        _firstImgView = [[UIImageView alloc]init];
        _firstImgView.image = [UIImage imageNamed:@"图一"];
        _firstImgView.backgroundColor = [UIColor whiteColor];
        _firstImgView.userInteractionEnabled = YES;
    }
    return _firstImgView;
}

-(UILabel *)textLabel{
    if (!_textLabel) {
        _textLabel = [[UILabel alloc]init];
        _textLabel.font = [UIFont systemFontOfSize:13];
        _textLabel.textAlignment = NSTextAlignmentCenter;
        _textLabel.textColor = [UIColor blackColor];
        _textLabel.numberOfLines = 1;
        
        //        _textLabel.textColor = [UIColor colorwithHexString:@"2A2A2A"];
    }
    return _textLabel;
}
-(void)setTitle:(NSString *)title{
    _title = title;
    _textLabel.text = _title;
}
-(void)setSelected:(BOOL)selected{
    [super setSelected:selected];
//    self.textLabel.textColor = selected ? [UIColor redColor] :[UIColor blackColor] ;
//    self.textLabel.font = selected ?[UIFont systemFontOfSize:16]:[UIFont systemFontOfSize:13];
   __block UIFont *font ;
    __block UIColor *color ;
    
    if (selected) {
        [UIView animateWithDuration:2.0f animations:^{
            font = [UIFont systemFontOfSize:16];
            color =  [UIColor redColor];
        } completion:^(BOOL finished) {
            font = [UIFont systemFontOfSize:13];
             color =  [UIColor blackColor];
        }];
    }else{
        [UIView animateWithDuration:2.0f animations:^{
            font = [UIFont systemFontOfSize:13];
                  color =  [UIColor blackColor];
        } completion:^(BOOL finished) {
            font = [UIFont systemFontOfSize:16];
            color =  [UIColor redColor];
        }];
    }
    self.textLabel.font = font ;
    self.textLabel.textColor = color;
}
-(void)layoutSubviews{
    [super layoutSubviews];
   
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    self.firstImgView.frame = CGRectMake(0, 0 , width, height);
    self.textLabel.frame = CGRectMake(0,  0, width, height);
    self.textLabel.center = CGPointMake(width/2.0, height/2.0);
}
@end
