//
//  FGTContact.m
//  Contacts
//
//  Created by FGT MAC on 6/1/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

#import "FGTContact.h"

@implementation FGTContact


- (instancetype)initWithFullName: (NSString *)fullName
email: (NSString *)email
                     phoneNumber: (NSString *)phoneNumber{
    
    self = [super init];
    
    if(self){
        _fullName = [fullName copy];
        _email = [email copy];
        _phoneNumber = [phoneNumber copy];
    }
    return self;
}

//Free up memory
- (void)dealloc {
    [_fullName release];
    [_email release];
    [_phoneNumber release];
    
    [super dealloc];
}


@end
