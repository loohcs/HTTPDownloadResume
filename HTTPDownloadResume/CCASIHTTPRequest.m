//
//  CCASIHTTPRequest.m
//  HTTPDownloadResume
//
//  Created by Ibokan on 12-8-13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "CCASIHTTPRequest.h"

@implementation CCASIHTTPRequest

@synthesize imgDelegete = _imgDelegete;
@synthesize requestIndex = _requestIndex;

- (void)setDownloadFileInfo
{
    NSString* destinationPath = [self procFilePath];
    [self setDownloadDestinationPath:destinationPath];
    [self setTemporaryFileDownloadPath:[destinationPath stringByAppendingPathExtension:@"download"]];
    [self setDelegate:self];
    [self setAllowResumeForFileDownloads:YES];
    self.shouldResetDownloadProgress = YES;
}
- (NSString*)procFilePath
{
    NSFileManager* fileManager = [NSFileManager defaultManager];    //创建文件管理器
    NSString* lastName = [self.url lastPathComponent];  //从路径中获得完整的文件名（带后缀）
    NSLog(@"lastName = %@",lastName);
    NSString* fileName = [lastName stringByDeletingPathExtension];  // 获得文件名（不带后缀）
    NSLog(@"fileName = %@",fileName);
    NSString* extName = [lastName pathExtension]; // 获得文件的后缀名（不带'.'）
    NSLog(@"extName = %@",extName);
    NSString* filePath = nil;
    
    for (int i = 0; ; i++)
    {
        NSString* tmp = nil;
        if(i != 0)
        {
            tmp = [NSString stringWithFormat:@"%@%@%d%@",fileName,@"(",i,@")"];
            NSLog(@"temp = %@",tmp);
        }
        else
        {
            tmp = [NSString stringWithFormat:fileName];
        }

        filePath = [[[NSHomeDirectory() stringByAppendingPathComponent:@"Documents"] stringByAppendingPathComponent:tmp] stringByAppendingPathExtension:extName];
        if ([fileManager fileExistsAtPath:filePath])
        {
            continue;
        }
        else
        {
            return filePath;
        }
    }
}

- (void)request:(ASIHTTPRequest *)request didReceiveResponseHeaders:(NSDictionary *)aResponseHeaders
{
//    NSLog(@"%@",aResponseHeaders);
//    NSLog(@"%@",[aResponseHeaders valueForKey:@"Content-Length"]);
}

- (void)requestFinished:(ASIHTTPRequest *)aRequest
{
    [self.imgDelegete didFinishdownload:self.downloadDestinationPath viewIndex:self.requestIndex];
}
//
- (void)requestFailed:(ASIHTTPRequest *)aRequest
{   
    [self.imgDelegete didDownloadError:aRequest];
}

@end
