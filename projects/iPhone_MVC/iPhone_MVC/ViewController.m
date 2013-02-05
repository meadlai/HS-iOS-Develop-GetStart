//
//  ViewController.m
//  iPhone_MVC
//
//  Created by Mead on 9/5/12.
//  Copyright (c) 2012 Mead. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)actionClickBtn:(id)sender;
@property (retain, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation ViewController
@synthesize myFirstButton;
@synthesize myTextField;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //代码方式添加UI组件
    UINavigationBar* toolbar = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, 300, 120)];
    UINavigationItem* _item = [[UINavigationItem alloc]initWithTitle:@"Hello you"];
    [toolbar pushNavigationItem: _item animated:YES];
    [self.view addSubview:toolbar];
    
    //编码方式添加事件响应
    [[self myFirstButton]addTarget:self action:@selector(actionSetTitle:) forControlEvents:UIControlEventTouchUpInside];
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)actionSetTitle:(id)sender{
    NSLog(@"action_Event...");
}

- (void)viewDidUnload
{
    [self setMyFirstButton:nil];
    [self setMyTextField:nil];
    [self setMyLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [myFirstButton release];
    [myTextField release];
    [_myLabel release];
    [super dealloc];
}
- (IBAction)actionClickBtn:(id)sender {
    [[self myTextField] setText:@"Hello World!"];
    [self myLabel].text=@"Good night";
    
}
@end
