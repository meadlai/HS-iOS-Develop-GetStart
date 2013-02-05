//
//  CatDelegate.h
//  OC_Delegate
//
//  Created by Mead on 9/5/12.
//  Copyright (c) 2012 Mead. All rights reserved.
//

#import <Foundation/Foundation.h>

//不要import类,循环引入,导致编译错误.
//#import "CatClass.h"
@class CatClass;

@protocol CatDelegate <NSObject>

//照顾
-(NSString*)takeCare:(CatClass*)cat;

//喂饭
-(NSString*)feed:(CatClass*)cat;



@end
