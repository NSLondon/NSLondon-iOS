//
//  NSLUser.m
//  NSLondon-iOS
//
//  Created by Kyle Fuller on 20/10/2013.
//  Copyright (c) 2013 NSLondon. All rights reserved.
//

#import "NSLUser.h"

@implementation NSLUser

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
         @"name": @"name",
         @"speaker": @"is_speaker",
         @"organiser": @"is_organiser",
     };
}

@end
