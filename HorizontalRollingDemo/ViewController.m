//
//  ViewController.m
//  HorizontalRollingDemo
//
//  Created by 乔冬 on 16/6/5.
//  Copyright © 2016年 XinHuaTV. All rights reserved.
//

#import "ViewController.h"
#import "SLSegmentScrollView.h"
@interface ViewController ()
@property (nonatomic,strong) SLSegmentScrollView  *segmentedControl;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupSegmented];
}
#pragma mark - 添加导航栏下面的segmentedControl
- (void)setupSegmented
{
    self.segmentedControl = [[SLSegmentScrollView alloc] initWithFrame:CGRectMake(43/2.0, 64, [UIScreen mainScreen].bounds.size.width - 43, 98/2.0)];
    self.segmentedControl.backgroundColor = [UIColor blackColor];
    self.segmentedControl.titleArray = @[@"推荐",@"直播",@"体育",@"轻松一刻",@"新闻学院",@"冰雪运动",@"国际足球",@"推荐",@"视频",@"图片",@"段子",@"读书",@"态度营销",@"态度公开课"];
    [self.view addSubview:self.segmentedControl];
    [self.segmentedControl setSelectedSegmentIndex:0 animated:YES]; // 默认选中第0个
    __weak typeof(self) weakSelf = self;
    // 点击
    self.segmentedControl.IndexChangeBlock = ^(NSInteger index){
        NSLog(@"%ld",index);
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
