//
//  CCASIHTTPRequest.h
//  HTTPDownloadResume
//
//  重载了ASIHTTPRequest 目的是为每个异步链接生成回调函数，这样能够避免系统提供的队列的不足。
//
//  Created by Ibokan on 12-8-13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASIHTTP/ASIHTTPRequest.h"
#import "CCDownTableView.h"

@interface CCASIHTTPRequest : ASIHTTPRequest<ASIHTTPRequestDelegate>

@property (nonatomic,assign) CCDownTableView* imgDelegete;
@property (nonatomic) int requestIndex;

- (void)setDownloadFileInfo;
- (NSString*)procFilePath;

- (void)requestFinished:(ASIHTTPRequest *)request;
- (void)requestFailed:(ASIHTTPRequest *)request;

@end
