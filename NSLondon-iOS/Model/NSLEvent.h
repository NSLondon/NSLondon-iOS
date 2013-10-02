//
//  NSLEvent.h
//  NSLondon-iOS
//
//  Created by Kyle Fuller on 22/09/2013.
//  Copyright (c) 2013 NSLondon. All rights reserved.
//

#import <Mantle/Mantle.h>

@class NSLVenue;

@interface NSLEvent : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong, readonly) NSString *title;
@property (nonatomic, strong, readonly) NSString *description;
@property (nonatomic, strong, readonly) NSLVenue *venue;

@property (nonatomic, strong, readonly) NSDate *startDate;
@property (nonatomic, strong, readonly) NSDate *endDate;

@property (nonatomic, strong, readonly) NSArray *items;

@end
