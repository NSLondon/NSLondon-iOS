//
//  NSLVenue.m
//  NSLondon-iOS
//
//  Created by Kyle Fuller on 22/09/2013.
//  Copyright (c) 2013 NSLondon. All rights reserved.
//

#import "NSLVenue.h"

@implementation NSLVenue

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
        @"name": @"name",
        @"latitude": @"latitude",
        @"longtitude": @"longtitude",

        @"addressLine1": @"address_line_1",
        @"addressLine2": @"address_line_2",
        @"city": @"city",
        @"county": @"county",
        @"postCode": @"post_code",

        @"notes": @"notes",
    };
}

@end
