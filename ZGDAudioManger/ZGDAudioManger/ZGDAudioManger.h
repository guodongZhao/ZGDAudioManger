//
//  ZGDAudioManger.h
//  音效播放
//
//  Created by 赵国栋 on 16/3/14.
//  Copyright © 2015年 https://github.com/guodongZhao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZGDAudioManger : NSObject
/**
 *   单例实例化对象
 */
+ (instancetype)shareAudioManger;
#pragma mark 实例方法 （推荐使用单例创建实现）
/**
 *  播放音效
 *
 *  @param file 音频文件路径
 */
- (void)playAudioSystemSoundWithFile:(NSString *)file;
/**
 *  播放音效 + 震动
 *
 *  @param file 音频文件路径
 */
- (void)playAudioSystemSoundAndAlertSoundWithFile:(NSString *)file;

@end
