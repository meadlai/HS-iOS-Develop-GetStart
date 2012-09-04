//
//  CatClass.h
//  OC_Basic
//
//  Created by Mead on 9/4/12.
//  Copyright (c) 2012 Mead. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CatClass : NSObject{
    NSString* _name;
    NSString* _skin;
    NSString* _gender;
    NSInteger _age;
}
@property(nonatomic,copy) NSString* name;
@property(nonatomic,retain) NSString* skin;
@property(nonatomic,copy) NSString* gender;
@property(nonatomic) NSInteger age;

-(id) initCat:(NSString*) iName withAge:(NSInteger) iAge;

//init初始化函数
-(id) init:(NSString *)iName withAge:(NSInteger)iAge withGender:(NSString*)sGender withSkin:(NSString*)iSkin;

//吃东西
-(void) eat:(NSString*) ifoodName;

//睡觉
-(void) sleep;

//公共方法
+(void)breath;

@end
