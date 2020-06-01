//
//  FGTContact.h
//  Contacts
//
//  Created by FGT MAC on 6/1/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FGTContact : NSObject


@property (nonatomic,copy) NSString *fullName;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *phoneNumber;

- (instancetype)initWithFullName: (NSString *)fullName
                email: (NSString *)email
                     phoneNumber: (NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
