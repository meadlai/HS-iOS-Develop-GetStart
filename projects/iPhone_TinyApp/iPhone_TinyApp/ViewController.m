//
//  ViewController.m
//  iPhone_TinyApp
//
//  Created by Mead on 2/5/13.
//  Copyright (c) 2013 Mead. All rights reserved.
//

#import "ViewController.h"

#import "AppDelegate.h"
#import "rootTabViewController.h"

@interface ViewController (){
    NSMutableArray* _tinyArray;
    NSMutableDictionary* _tinyDictionary;
}
@property(nonatomic,retain,readwrite) NSMutableArray* tinyArray;
@property(nonatomic,retain) NSMutableDictionary* tinyDictionary;
- (IBAction)fn_login:(id)sender;


@end

@implementation ViewController
@synthesize tinyArray = _tinyArray;
@synthesize tinyDictionary = _tinyDictionary;

#pragma mark
#pragma mark 视图加载
- (void)viewDidLoad{
    [super viewDidLoad];
}

#pragma mark
#pragma mark 视图将要渲染
- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"视图将要显示");
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)fn_login:(id)sender {
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    UIWindow *window = delegate.window;
    rootTabViewController* rootVC = [[[rootTabViewController alloc]init]autorelease];
    UINavigationController *navigationCtrl = [[[UINavigationController alloc] initWithRootViewController:rootVC] autorelease];
    window.rootViewController = navigationCtrl;
}
@end
