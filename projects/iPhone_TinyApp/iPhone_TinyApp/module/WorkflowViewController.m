//
//  WorkflowViewController.m
//  iPhone_TinyApp
//
//  Created by Mead on 2/5/13.
//  Copyright (c) 2013 Mead. All rights reserved.
//

#import "WorkflowViewController.h"
#import "PushinViewController.h"

@interface WorkflowViewController ()
- (IBAction)fn_push:(id)sender;

@end

@implementation WorkflowViewController

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

- (IBAction)fn_push:(id)sender {
    PushinViewController* vc = [[PushinViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];

    
}
@end
