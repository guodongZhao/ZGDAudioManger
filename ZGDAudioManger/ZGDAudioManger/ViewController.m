//
//  ViewController.m
//  ZGDAudioManger
//
//  Created by 赵国栋 on 16/6/6.
//  Copyright © 2016年 赵国栋. All rights reserved.
//

#import "ViewController.h"
#import "ZGDAudioManger.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [[ZGDAudioManger shareAudioManger] playAudioSystemSoundWithFile:@"此处输入你要播放的音频文件路径"];
}


@end
