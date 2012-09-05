//
//  main.m
//  OC_Delegate
//
//  Created by Mead on 9/4/12.
//  Copyright (c) 2012 Mead. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "CatClass.h"
#import "SonKeepHouse.h"
#import "DaughterKeepHouse.h"

int main(int argc, char *argv[])
{
    CatClass* cat = [[CatClass alloc]init];
    
    SonKeepHouse* boy = [[SonKeepHouse alloc]init];
    
    DaughterKeepHouse* girl = [[DaughterKeepHouse alloc]init];
    
    //[cat setDelegate:girl];
    cat.delegate = boy;
    
    [cat performSelector:@selector(illness)];
    [cat performSelector:@selector(hungry)];
}
