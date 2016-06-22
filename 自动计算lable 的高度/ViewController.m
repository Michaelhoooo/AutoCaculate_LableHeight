//
//  ViewController.m
//  自动计算lable 的高度
//
//  Created by hezihao on 16/4/14.
//  Copyright © 2016年 webuddy. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *label = [[UILabel alloc] init];
    label.font = [UIFont boldSystemFontOfSize:14.0f];  //UILabel的字体大小
    label.numberOfLines = 0;
    label.textColor = [UIColor whiteColor];
    [label setBackgroundColor:[UIColor redColor]];
    NSString *str = @"每当和别人谈起母校各种自豪，大学生活各种多彩，人生经历各种丰富，其实内心还是留有种种遗憾；四年的蹉跎时光，有人收获了知识，有人收获了人生阅历，还有人收获了爱情，而我收获的只有那纯洁的友谊，兄弟情。分别整整一年了，还记得那时我们都是多么的不舍，同学情，兄弟情，混合着酒精流到心里，一米八几的大男孩哭的稀里哗啦，拥抱着说再见；之后的我们离开了熟悉的校园，奔赴在各个工作岗位，去体现自己的价值，为生活而忙碌着；一转身，有些人真的就再也不见。毕业一周年，你们还好吗？工作还顺利吗？学习还顺心吗？一切都回不了头，只能在心里默默地想着你们，希望你们安好。。。每当和别人谈起母校各种自豪，大学生活各种多彩，人生经历各种丰富，其实内心还是留有种种遗憾；四年的蹉跎时光，有人收获了知识，有人收获了人生阅历，还有人收获了爱情，而我收获的只有那纯洁的友谊，兄弟情。分别整整一年了，还记得那时我们都是多么的不舍，同学情，兄情，混合着酒精流到心里，一米八几的大男孩哭的稀里哗啦，拥抱着说再见；之后的我们离开了熟悉的校园，奔赴在各个工作岗位，去体现自己的价值，为生活而忙碌着；一转身，有些人真的就再也不见。毕业一周年，你们还好吗？工作还顺利吗？学习还顺心吗？一切都回不了头，只能在心里默默地想着你们，希望你们安好。。。";
       label.text = str;
    
   //定义lable的行间距和间距，并且自动适应高度

    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    [paragraphStyle setLineSpacing:6];
    
    NSMutableAttributedString *attributedString =  [[NSMutableAttributedString alloc] initWithString:str attributes:@{NSKernAttributeName : @(1.f)}];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, label.text.length)];
    
    label.attributedText = attributedString;
    
    
    CGSize size = CGSizeMake(335, MAXFLOAT);
    CGSize labelSize = [label sizeThatFits:size];
    label.frame = CGRectMake(20, 20, labelSize.width, labelSize.height);
    
    [self.view addSubview:label];

}


@end
