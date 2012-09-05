//
//  main.m
//  OC_Basic
//
//  Created by Mead on 9/4/12.
//  Copyright (c) 2012 Mead. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

#import "CatClass.h"
#import "CatClass+Catch.h"

int main(int argc, char *argv[])
{
    NSInteger catAge = 9;
    CatClass* cat = [[CatClass alloc]initCat:@"oct" withAge:catAge];
    [cat catch:@"ball"];
    
    //^[]
    
    NSArray* array = [[NSArray alloc]init];
    NSMutableArray* mArray = [[NSMutableArray alloc]initWithCapacity:5];
    NSMutableDictionary* mDic = [[NSMutableDictionary alloc]initWithCapacity:9];
    
    
}
