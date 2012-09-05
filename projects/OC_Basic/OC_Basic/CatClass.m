//
//  CatClass.m
//  OC_Basic
//
//  Created by Mead on 9/4/12.
//  Copyright (c) 2012 Mead. All rights reserved.
//
#import "CatClass.h"

@implementation CatClass

@synthesize name = _name;
@synthesize skin = _skin;
@synthesize gender = _gender;
@synthesize age = _age;

/**
 初始化方法, 
 self相当于java里面的this关键字
 nil,NULL相当于java的null
 id相当于Object指针
 */
-(id) initCat:(NSString*) sName withAge:(NSInteger) sAge{
    self.age = sAge;
    _age = sAge;
    NSLog(@"cat %@'s age is %i years old.",sName,[self age]);
    return self;
}

-(id) init:(NSString *)iName withAge:(NSInteger)iAge withGender:(NSString*)sGender withSkin:(NSString*)iSkin{
    if (![super init]) {
        return nil;
    }
    return self;
}

-(void) eat:(NSString*) ifoodName{
    NSLog(@"好吃, %@ is nice, I like it.", ifoodName);
}

-(void) sleep{
    NSLog(@"Hu-lu~.~.~.Hu-lu~.~.~.");
}

+(void)breath{
    NSLog(@"Hu-lu~.~.~.Hu-lu~.~.~.");
}




@end
