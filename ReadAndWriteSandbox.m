//
//  ReadAndWriteSandbox.m
//  app展示
//
//  Created by apple on 15/9/5.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "ReadAndWriteSandbox.h"

@implementation ReadAndWriteSandbox



-(NSString *)getFilePathWithUrlString:(NSString *)urlString
{
    // 获取沙盒 Caches 文件路径
    NSString *path =NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).lastObject;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSLog(@"%@",path);

    });
    
    // 拼接存储的图片路径
    path = [path stringByAppendingPathComponent:urlString.lastPathComponent];
    
    return path;

}


-(UIImage *)readImageFromSandboxWithUrlString:(NSString *)urlString
{
    // 拼接图片地址
    NSString *path = [self getFilePathWithUrlString:urlString];
    
    // 获取图片
    UIImage *image = [UIImage imageWithContentsOfFile:path];
    
    return image;
}



// 获取单例对象.
+(instancetype)sharedSandbox
{
    static id _instance;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}


@end
