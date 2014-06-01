//
//  User_Mudassir.h
//  Chat_Mudassir
//
//  Created by User1 on 2014-05-31.
//  Copyright (c) 2014 cestar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User_Mudassir : NSObject
{
    NSString *Mudassir_name;
    NSString *Mudassir_gender;
    int Mudassir_age;
    int Mudassir_userid;
}

@property (copy, nonatomic) NSString *Mudassir_name, *Mudassir_gender;
@property  int Mudassir_age, Mudassir_userid;


-(void) Mudassir_setName: (NSString *) Mudassir_theName andGender:(NSString *) Mudassir_theGender;

-(void) Mudassir_setage: (int) Mudassir_theAge andUserid:(int) Mudassir_theUserid;
-(void) Mudassir_print;



-(NSComparisonResult) compareNames: (User_Mudassir *) Mudassir_element;
-(BOOL) isEqual:(User_Mudassir *) Mudassir_theUser;


@end

