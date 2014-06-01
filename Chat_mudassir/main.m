//
//  main.m
//  Chat_Mudassir
//
//  Created by User1 on 2014-05-31.
//  Copyright (c) 2014 cestar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User_Mudassir.h"
#import "Chatroom_Mudassir.h"
int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSString *Mudassir_aName= @"Mudassir";
        NSString *Mudassir_aGender=@"male";
        int Mudassir_aAge=20;
        int Mudassir_aUserid=1;
        NSString *Mudassir_bName= @"Dhoni";
        NSString *Mudassir_bGender=@"male";
        int Mudassir_bAge=20;
        int Mudassir_bUserid=2;
        NSString *Mudassir_cName= @"C.Ronaldo";
        NSString *Mudassir_cGender=@"male";
        int Mudassir_cAge=20;
        int Mudassir_cUserid=3;
        NSString *Mudassir_dName= @"Messi";
        NSString *Mudassir_dGender=@"male";
        int Mudassir_dAge=20;
        int Mudassir_dUserid=4;
        
        
        User_Mudassir *Mudassir_user1= [[User_Mudassir alloc]init];
        User_Mudassir *Mudassir_user2= [[User_Mudassir alloc]init];
        User_Mudassir *Mudassir_user3= [[User_Mudassir alloc]init];
        User_Mudassir *Mudassir_user4= [[User_Mudassir alloc]init];
        User_Mudassir *myUser;
        
        [Mudassir_user1 setMudassir_name:Mudassir_aName];
        [Mudassir_user1 setMudassir_gender: Mudassir_aGender];
        [Mudassir_user1 setMudassir_age:Mudassir_aAge];
        [Mudassir_user1 setMudassir_userid:Mudassir_aUserid];
        [Mudassir_user2 setMudassir_name: Mudassir_bName];
        [Mudassir_user2 setMudassir_gender: Mudassir_bGender];
        [Mudassir_user2 setMudassir_age:Mudassir_bAge];
        [Mudassir_user2 setMudassir_userid:Mudassir_bUserid];
        [Mudassir_user3 setMudassir_name: Mudassir_cName];
        [Mudassir_user3 setMudassir_gender: Mudassir_cGender];
        [Mudassir_user3 setMudassir_age:Mudassir_cAge];
        [Mudassir_user3 setMudassir_userid:Mudassir_cUserid];
        [Mudassir_user4 setMudassir_name: Mudassir_dName];
        [Mudassir_user4 setMudassir_gender: Mudassir_dGender];
        [Mudassir_user4 setMudassir_age:Mudassir_dAge];
        [Mudassir_user4 setMudassir_userid:Mudassir_dUserid];
        
        Chatroom_Mudassir *Mudassir_mychat = [Chatroom_Mudassir alloc];
        
        Mudassir_mychat = [Mudassir_mychat Mudassir_initWithName:@"Mudassir User"];
        
        NSLog( @" in Chat room after %i", [Mudassir_mychat Mudassir_entries]);
        
        [Mudassir_mychat Mudassir_addUser:Mudassir_user1];
        [Mudassir_mychat Mudassir_addUser:Mudassir_user2];
        [Mudassir_mychat Mudassir_addUser:Mudassir_user3];
        [Mudassir_mychat Mudassir_addUser:Mudassir_user4];
        
        
        NSLog(@"Entries in AChat room  after adding users: %i", [Mudassir_mychat Mudassir_entries]);
        
        [Mudassir_mychat Mudassir_list];
        
        NSLog(@"Mudassir_lookup: Param");
        myUser = [Mudassir_mychat Mudassir_lookup: @"Param"];
        
        
        if(myUser != nil)
            [myUser Mudassir_print];
        else
            NSLog(@"Not found");
        
        
        [Mudassir_mychat Mudassir_sort];
        [Mudassir_mychat Mudassir_list];
        
        
        NSMutableArray *Mudassir_matchList;
        
        Mudassir_matchList = [Mudassir_mychat Mudassir_lookupAllMatchesFor:@"s"];
        
        
        if(!Mudassir_matchList)
            NSLog(@"list");
        else
        {
            [Mudassir_mychat Mudassir_showMatchList:Mudassir_matchList];
            [Mudassir_mychat Mudassir_printMatchList:Mudassir_matchList];
        }
        
        
    }
    return 0;
}


