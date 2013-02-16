//
//  PopupViewController.m
//  iPhone_TinyApp
//
//  Created by Mead on 2/5/13.
//  Copyright (c) 2013 Mead. All rights reserved.
//

#import "PopupViewController.h"
#import "AppDelegate.h"

@interface PopupViewController ()
- (IBAction)fn_close:(id)sender;

@end

@implementation PopupViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//关闭模态窗口
- (IBAction)fn_close:(id)sender {
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    UIWindow *window = delegate.window;
    [window.rootViewController dismissModalViewControllerAnimated:YES];
}
@end
