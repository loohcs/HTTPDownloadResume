//
//  CCViewController.m
//  HTTPDownloadResume
//
//  Created by Ibokan on 12-8-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "CCViewController.h"

@implementation CCViewController

//@synthesize downTableView = _downTableView;
@synthesize downViewController = _downViewController;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
//    if (!self.downViewController)
//    {
//        self.downViewController = [[CCDownViewController alloc] init];
//    }
//    
//    [self.navigationController pushViewController:self.downViewController animated:YES];
//    [self.downViewController viewDidLoad];
    
    
//    self.view.backgroundColor = [UIColor whiteColor];
//    
//    CCDownloadInfo* info = [CCDownloadInfo downinfoWithUrl:[NSURL URLWithString:@"abc"] withLinkName:@"This is a lik"];
//    CCDownloadInfo* info1 = [CCDownloadInfo downinfoWithUrl:[NSURL URLWithString:@"abc"] withLinkName:@"This is a lik1"];
//    self.downTableView = [[CCDownTableView alloc] initWithArray:[NSArray arrayWithObjects:info,info1, nil]];
//    self.downTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
//    self.downTableView.rowHeight = 60;
//    
//    [self.view addSubview:self.downTableView];
//    
//    [info release];
//    [info1 release];
    
//    DownloadView* view1 = [[DownloadView alloc] initWithFrame:CGRectMake(0, 0, 320, 80) withDownloadInfo:info];
//    [self.view addSubview:view1];
//    [view1 release];
//    
//    view1 = [[DownloadView alloc] initWithFrame:CGRectMake(0, 80, 320, 80) withDownloadInfo:info];
//    [self.view addSubview:view1];
//    [view1 release];
    
//    [info release];
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] init];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    [_downViewController release];
//    [_downTableView retain];
    
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
