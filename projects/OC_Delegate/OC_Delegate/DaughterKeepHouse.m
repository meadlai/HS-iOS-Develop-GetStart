//
//  DaughterKeepHouse.m
//  OC_Delegate
//
//  Created by Mead on 9/5/12.
//  Copyright (c) 2012 Mead. All rights reserved.
//

#import "DaughterKeepHouse.h"
#import "CatClass.h"

@implementation DaughterKeepHouse

-(NSString*)takeCare:(CatClass*)cat{
    NSString* drug = @"pills";
    [cat eat: drug];
    return drug;
}

-(NSString*)feed:(CatClass*)cat{
    NSString* food = @"fish";
    [cat eat: food];
    return food;
}

@end
