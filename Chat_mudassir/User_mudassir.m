//
//  User_Mudassir.m
//  Chat_Mudassir
//
//  Created by User1 on 2014-05-31.
//  Copyright (c) 2014 cestar. All rights reserved.
//

#import "User_Mudassir.h"

@implementation User_Mudassir
@synthesize Mudassir_name ,Mudassir_gender, Mudassir_age , Mudassir_userid;

-(void) Mudassir_setName: (NSString *) Mudassir_theName andGender:(NSString *) Mudassir_theGender;
{
    self.Mudassir_name= Mudassir_theName;
    self.Mudassir_gender= Mudassir_theGender;
}
-(void) Mudassir_setage: (int) Mudassir_theAge andUserid:(int) Mudassir_theUserid;
{
    self.Mudassir_age= Mudassir_theAge;
    self.Mudassir_userid= Mudassir_theUserid;
}
-(void) Mudassir_print;
{
    NSLog(@"===========User DEtails==========================");
    
    NSLog(@"|Username   %-32s|", [Mudassir_name UTF8String]);
    NSLog(@"| Gender  %-32s|", [Mudassir_gender UTF8String]);
    NSLog(@"| Age  %-32d|",Mudassir_age);
    NSLog(@"| UserId  %-32d|",Mudassir_userid);
    
    NSLog(@"=====================================");
}

-(NSComparisonResult) compareNames: (User_Mudassir *) Mudassir_element;
{
    return [Mudassir_name compare: Mudassir_element.Mudassir_name];
}
-(BOOL) isEqual:(User_Mudassir *) Mudassir_theUser;
{
    if([Mudassir_name isEqualToString: Mudassir_theUser.Mudassir_name] == YES
       && [Mudassir_gender isEqualToString:Mudassir_theUser.Mudassir_gender] == YES
       
       )
        return YES;
    else
        return NO;
}


@end
