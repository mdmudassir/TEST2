//
//  Chatroom_Mudassir.m
//  Chat_Mudassir
//
//  Created by User1 on 2014-05-31.
//  Copyright (c) 2014 cestar. All rights reserved.
//

#import "Chatroom_Mudassir.h"

@implementation Chatroom_Mudassir
-(id) Mudassir_initWithName: (NSString *) Mudassir_name
{
    if (self)
    {
        Mudassir_Name = [[NSString alloc] initWithString: Mudassir_name];
        Mudassir_topic = [[NSMutableArray alloc] init];
    }
    return self;
}
-(id) init
{
    return [self Mudassir_initWithName:@"My Chatroom_Mudassir"];
}
-(void) Mudassir_addUser: (User_Mudassir *) Mudassir_theUser
{
    [Mudassir_topic addObject: Mudassir_theUser];
}
-(void) Mudassir_removeUser: (User_Mudassir *) Mudassir_theUser;
{
    [Mudassir_topic removeObject: Mudassir_theUser];
}
-(void) Mudassir_list;
{
    NSLog(@"=========  Contents of: %@ =========", Mudassir_Name);
    
    for(User_Mudassir *Mudassir_theUser in Mudassir_topic)
        NSLog(@"%-20s %-32s", [Mudassir_theUser . Mudassir_name UTF8String], [Mudassir_theUser.Mudassir_gender UTF8String]);
    NSLog(@"=======================================================");
    
    
}
-(User_Mudassir *) Mudassir_lookup: (NSString *) Mudassir_theName;
{
    NSRange Mudassir_subRange;
    
    
    for (User_Mudassir *Mudassir_nextCard in Mudassir_topic)
    {
        Mudassir_subRange = [[Mudassir_nextCard Mudassir_name] rangeOfString: Mudassir_theName options:NSCaseInsensitiveSearch];
        
        if (Mudassir_subRange.location != NSNotFound)
            return Mudassir_nextCard;
    }
    return nil;
}

-(void) Mudassir_showMatchList: (NSMutableArray *) Mudassir_theMatchList;
{
    NSLog(@"=========  Contents of All Match List  ==========");
    
    for(User_Mudassir *Mudassir_nextCard in Mudassir_theMatchList)
        NSLog(@"%-20s %-32s", [Mudassir_nextCard.Mudassir_name UTF8String], [Mudassir_nextCard.Mudassir_gender UTF8String]);
    NSLog(@"=======================================================");
}
-(void) Mudassir_printMatchList: (NSMutableArray *) Mudassir_theMatchList;
{
    for(User_Mudassir *Mudassir_nextCard in Mudassir_theMatchList)
        [Mudassir_nextCard Mudassir_print];
}
-(NSMutableArray *)Mudassir_lookupAllMatchesFor: (NSString *) Mudassir_theName;
{
    NSMutableArray *Mudassir_matchList = [[NSMutableArray alloc] init];
    NSRange Mudassir_subRange;
    
    for (User_Mudassir *Mudassir_nextCard in Mudassir_topic)
    {
        Mudassir_subRange = [[Mudassir_nextCard Mudassir_name] rangeOfString: Mudassir_theName options:NSCaseInsensitiveSearch];
        
        if (Mudassir_subRange.location != NSNotFound)
            [Mudassir_matchList addObject: Mudassir_nextCard];
    }
    if ([Mudassir_matchList count])
        return Mudassir_matchList;
    else
        return nil;
}
-(void) Mudassir_sort;
{
    [Mudassir_topic sortUsingSelector: @selector (compareNames:)];
}
-(int) Mudassir_entries
{
    return (int) [Mudassir_topic count];
}


@end
