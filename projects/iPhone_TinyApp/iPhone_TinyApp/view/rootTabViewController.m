//
//  rootTabViewController.m
//  iPhone_TinyApp
//
//  Created by Mead on 2/5/13.
//  Copyright (c) 2013 Mead. All rights reserved.
//

#import "rootTabViewController.h"

#import "WorkflowViewController.h"
#import "MessageViewController.h"
#import "SettingViewController.h"

@interface rootTabViewController ()

@end

@implementation rootTabViewController

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
    
    WorkflowViewController* workflowVC = [[[WorkflowViewController alloc]init]autorelease];
    workflowVC.title = @"流程";
    MessageViewController* messageVC = [[[MessageViewController alloc]init]autorelease];
    messageVC.title = @"消息";
    SettingViewController* settingVC = [[[SettingViewController alloc]init] autorelease];
    settingVC.title = @"设置";
    UITabBarItem* settingitem = [[UITabBarItem alloc ]init];
    settingitem.title = @"设置";
    settingVC.tabBarItem = settingitem;
    //
    self.viewControllers = [[NSArray alloc]initWithObjects:workflowVC,messageVC,settingVC,nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
