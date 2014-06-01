//
//  Chatroom_Mudassir.h
//  Chat_Mudassir
//
//  Created by User1 on 2014-05-31.
//  Copyright (c) 2014 cestar. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "User_Mudassir.h"
@interface Chatroom_Mudassir : NSObject
{
    NSString *Mudassir_Name;
    NSMutableArray *Mudassir_topic;
}

-(id) Mudassir_initWithName: (NSString *) Mudassir_name;
-(void) Mudassir_addUser: (User_Mudassir *) Mudassir_theUser;
-(void) Mudassir_removeUser: (User_Mudassir *) Mudassir_theUser;
-(void) Mudassir_list;
-(int) Mudassir_entries;
-(User_Mudassir *) Mudassir_lookup: (NSString *) Mudassir_theName;
-(void) Mudassir_showMatchList: (NSMutableArray *) Mudassir_theMatchList;
-(void) Mudassir_printMatchList: (NSMutableArray *) Mudassir_theMatchList;
-(NSMutableArray *)Mudassir_lookupAllMatchesFor: (NSString *) Mudassir_theName;
-(void) Mudassir_sort;

@end