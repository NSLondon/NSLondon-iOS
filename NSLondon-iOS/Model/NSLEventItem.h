//
//  NSLEventItem.h
//  NSLondon-iOS
//
//  Created by Kyle Fuller on 20/10/2013.
//  Copyright (c) 2013 NSLondon. All rights reserved.
//

#import "MTLModel.h"

@class NSLUser;

typedef NS_ENUM(NSUInteger, NSLEventItemType) {
    NSLEventItemUnknownType,
    NSLEventItemIntermissionType,
    NSLEventItemTalkType,
};

@interface NSLEventItem : MTLModel

@property (nonatomic, assign, readonly) NSLEventItemType type;

@property (nonatomic, strong, readonly) NSString *title;
@property (nonatomic, strong, readonly) NSLUser *user;
@property (nonatomic, strong, readonly) NSDate *start;
@property (nonatomic, strong, readonly) NSDate *end;

@property (nonatomic, strong, readonly) NSArray *links;

@end
