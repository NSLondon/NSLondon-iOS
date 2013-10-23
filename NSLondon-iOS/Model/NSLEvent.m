//
//  NSLEvent.m
//  NSLondon-iOS
//
//  Created by Kyle Fuller on 22/09/2013.
//  Copyright (c) 2013 NSLondon. All rights reserved.
//

#import "NSLEvent.h"
#import "NSLEventItem.h"
#import "NSLVenue.h"


@implementation NSLEvent

+ (NSDateFormatter *)dateFormatter {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    dateFormatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss'Z'";
    return dateFormatter;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
        @"title": @"title",
        @"description": @"description",
        @"venue": @"venue",

        @"startDate": @"start_date",
        @"endDate": @"end_date",

        @"items": @"items",
    };
}

+ (NSValueTransformer *)venueJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:NSLVenue.class];
}

+ (NSValueTransformer *)itemsJSONTransformer {
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:NSLEventItem.class];
}

+ (NSValueTransformer *)startDateJSONTransformer {
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^(NSString *str) {
        return [self.dateFormatter dateFromString:str];
    } reverseBlock:^(NSDate *date) {
        return [self.dateFormatter stringFromDate:date];
    }];
}

+ (NSValueTransformer *)endDateJSONTransformer {
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^(NSString *str) {
        return [self.dateFormatter dateFromString:str];
    } reverseBlock:^(NSDate *date) {
        return [self.dateFormatter stringFromDate:date];
    }];
}

@end
