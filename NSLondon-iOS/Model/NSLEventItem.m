//
//  NSLEventItem.m
//  NSLondon-iOS
//
//  Created by Kyle Fuller on 20/10/2013.
//  Copyright (c) 2013 NSLondon. All rights reserved.
//

#import "NSLEventItem.h"
#import "NSLLink.h"


@implementation NSLEventItem

+ (NSDateFormatter *)dateFormatter {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    dateFormatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss'Z'";
    return dateFormatter;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
        @"type": @"type",

        @"title": @"title",
        @"user": @"user",

        @"startDate": @"start_date",
        @"endDate": @"end_date",

        @"links": @"links",
    };
}

+ (NSValueTransformer *)stateJSONTransformer {
    NSDictionary *types = @{
        @"intermission": @(NSLEventItemIntermissionType),
        @"talk": @(NSLEventItemTalkType)
    };

    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^(NSString *str) {
        return types[str];
    } reverseBlock:^(NSNumber *type) {
        return [types allKeysForObject:type].lastObject;
    }];
}

+ (NSValueTransformer *)linksJSONTransformer {
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:NSLLink.class];
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
