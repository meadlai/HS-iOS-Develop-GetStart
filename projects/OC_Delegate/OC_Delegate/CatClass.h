//
//  CatClass.h
//  OC_Delegate
//
//  Created by Mead on 9/5/12.
//  Copyright (c) 2012 Mead. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CatDelegate.h"

@interface CatClass : NSObject{
    id<CatDelegate> _delegate;
}

@property(nonatomic,retain) id<CatDelegate> delegate;

-(void) illness;
-(void) hungry;
-(void) eat:(NSString*)something;

@end
