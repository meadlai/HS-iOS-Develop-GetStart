//
//  CatClass.m
//  OC_Delegate
//
//  Created by Mead on 9/5/12.
//  Copyright (c) 2012 Mead. All rights reserved.
//

#import "CatClass.h"

@implementation CatClass

@synthesize delegate = _delegate;
-(void) illness{
    NSLog(@"I am ill");
    if(_delegate !=nil ){
        NSString* idrug = [[self delegate]takeCare:self];
        if([idrug isEqualToString:@"water"]){
            NSLog(@"You are bad boy, suck-%@",idrug);
        }else{
            NSLog(@"You are nice girl, great-%@",idrug);
        }
    }else{
        NSLog(@"I am dying");
    }
}
-(void) hungry{
    NSLog(@"I am hungry");
    if(_delegate){
        NSString* ifood = [[self delegate] feed:self];
        NSLog(@"You are nice girl, %@ tasts good!",ifood);
    }else{
        NSLog(@"So hungry...How about stealing some cake??? ");
    }
        
}

-(void) eat:(NSString *)something{
    NSLog(@"I have some %@",something);
}
@end
