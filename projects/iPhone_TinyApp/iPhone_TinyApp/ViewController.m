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
#import "PopupViewController.h"

@interface ViewController (){
    NSMutableArray* _tinyArray;
    NSMutableDictionary* _tinyDictionary;
}
@property(nonatomic,retain,readwrite) NSMutableArray* tinyArray;
@property(nonatomic,retain) NSMutableDictionary* tinyDictionary;
//
- (IBAction)fn_login:(id)sender;
//
- (IBAction)fn_popup:(id)sender;
//

@end

@implementation ViewController
@synthesize tinyArray = _tinyArray;
@synthesize tinyDictionary = _tinyDictionary;

#pragma mark
#pragma mark 视图加载
- (void)viewDidLoad{
    [super viewDidLoad];
    NSLog(@"1,加载完毕viewDidLoad");
    
    self.tinyArray = [[NSMutableArray alloc]initWithObjects:@"登录成功",@"登录失败", nil];
    NSLog(@"tinyArray count = %i",self.tinyArray.count);
    self.tinyDictionary = [[NSMutableDictionary alloc]init];
    [self.tinyDictionary setObject:@"key1" forKey:@"value1"];
    [self.tinyDictionary setObject:@"key2" forKey:@"value2"];
    NSLog(@"tinyDictionary count = %i",self.tinyDictionary.count);
}

#pragma mark
#pragma mark 视图将要渲染
- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"2,视图将要显示viewWillAppear");
}

-(void)viewWillDisappear:(BOOL)animated{
    
}

#pragma mark
#pragma mark 代码方式绘制view,这个方法被重写了,就不会去加载xib了
//- (void)loadView{
//  NSLog(@"开始加载view");
//}

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

- (IBAction)fn_popup:(id)sender {
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    UIWindow *window = delegate.window;
    PopupViewController* popup = [[PopupViewController alloc]init];
    [window.rootViewController presentModalViewController:popup animated:NO];
}
@end
