//
//  SonKeepHouse.m
//  OC_Delegate
//
//  Created by Mead on 9/5/12.
//  Copyright (c) 2012 Mead. All rights reserved.
//

#import "SonKeepHouse.h"
#import "CatClass.h"

@implementation SonKeepHouse

-(NSString*)takeCare:(CatClass*)cat{
    NSString* provide_water = @"water";
    [cat eat: provide_water];
    return provide_water;
}

@end
