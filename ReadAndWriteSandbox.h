//
//  ReadAndWriteSandbox.h
//  app展示
//
//  Created by apple on 15/9/5.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ReadAndWriteSandbox : NSObject

// 工具类可以定义成单例

// 对外提供一个获取单例的方法
+(instancetype)sharedSandbox;


// 获得沙盒路径的方法(具体到文件路径).
-(NSString *)getFilePathWithUrlString:(NSString *)urlString;


// 从沙盒中获得图片
- (UIImage *)readImageFromSandboxWithUrlString:(NSString *)urlString;


@end
