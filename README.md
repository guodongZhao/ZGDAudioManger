# ZGDAudioManger 
====================
## `Instructions：`  Using The Apple Source  AudioToolbox.FrameWork Complete the handling of the sound file
（使用源生AudioToolbox.FrameWork完成对音效文件的处理，可同时实现振动播放）
-------------------------------------------------------------------------

### `Method--Use`
       Attention：It is recommended to use the singleton object instance is created  
       注意：建议使用单例对象方式创建实例对象

####  可实现独立播放音效 也可添加振动
```objc
/**
 *  播放音效
 *
 *  @param file 音频文件路径
 */
- (void)playAudioSystemSoundWithFile:(NSString *)file;
```
```objc
- (void)playAudioSystemSoundWithFile:(NSString *)file;
/**
 *  播放音效 + 震动
 *
 *  @param file 音频文件路径
 */
- (void)playAudioSystemSoundAndAlertSoundWithFile:(NSString *)file;
```




