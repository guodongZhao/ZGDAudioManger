//
//  ZGDAudioManger.m
//  音效播放
//
//  Created by 赵国栋 on 16/3/14.
//  Copyright © 2015年 . All rights reserved.
//

#import "ZGDAudioManger.h"
#import <AudioToolbox/AudioToolbox.h>

// .framework后缀的库，从Xcode5之后都不用添加，直接导入就可以使用

static ZGDAudioManger *_manger = nil;

@implementation ZGDAudioManger

/**
 *  单利实例化对象
 *
 *  @return 单例对象
 */
+ (instancetype)shareAudioManger
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manger = [[[self class] alloc] init];
    });
    return _manger;
}

/**
 *  获取音效ID
 *
 *  @param file 音频文件路径
 *
 *  @return 音效ID
 */
- (SystemSoundID)GetSystemSoundIDWithFile:(NSString *)file
{
    // 1.URL
    NSURL *url = [[NSBundle mainBundle] URLForResource:file withExtension:nil];
    // 2.把文件添加进入内存 得到相应的soundID
    /**
     *  音效播放
     *
     *  @param inFileURL#>        文件路径 CFURLRef description#>
     *  @param outSystemSoundID#> 音效ID description#>
     *
     */
    SystemSoundID soundID = 0;
    AudioServicesCreateSystemSoundID((__bridge CFURLRef _Nonnull)(url), &soundID);
#warning 此处输出soundID，如果为0则文件路径出错
    if (soundID == 0) {
        NSLog(@"文件路径出错");
        return 0;
    }else
    {
        // 3.返回生成的音效ID
        return soundID;
    }
    
   
}

#pragma mark 实例方法 （推荐使用单例创建实现）
/**
 *  播放音效--
 *
 *  @param file 音频文件路径
 */
- (void)playAudioSystemSoundWithFile:(NSString *)file
{
    // 获取音效ID
    SystemSoundID soundID = [self GetSystemSoundIDWithFile:file];
    
    // .播放音效
    AudioServicesPlaySystemSound(soundID);
    
}

/**
 *  播放音效+震动
 */
- (void)playAudioSystemSoundAndAlertSoundWithFile:(NSString *)file
{
    // 获取音效ID
    SystemSoundID soundID = [self GetSystemSoundIDWithFile:file];
    
    // .播放音效
    AudioServicesPlaySystemSound(soundID);
    
    // .添加震动 （模拟器没有效果）
    AudioServicesPlayAlertSound(soundID);
}

@end
