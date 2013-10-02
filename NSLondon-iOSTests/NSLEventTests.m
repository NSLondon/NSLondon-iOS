//
//  NSLEventTests.m
//  NSLondon-iOS
//
//  Created by Kyle Fuller on 02/10/2013.
//  Copyright (c) 2013 NSLondon. All rights reserved.
//

#import "NSLTests.h"
#import "NSLEvent.h"


@interface NSLEventTests : XCTestCase {
    NSLEvent *_event;
}

@end

@implementation NSLEventTests

- (void)setUp {
    NSDictionary *dictionary = @{
        @"title": @"NSLondon",
        @"description": @"The very first NSLondon",
        @"venue": [NSNull null],

        @"startDate": @"2013-07-02 15:40:00 +0000",
        @"endDate": @"2013-07-02 18:40:00 +0000",

        @"items": @[],
    };

    NSError *error;
    _event = [MTLJSONAdapter modelOfClass:NSLEvent.class fromJSONDictionary:dictionary error:&error];
}

- (void)testEventFromJSON {
    expect(_event).notTo.beNil();
}

- (void)testEventTitleFromJSON {
    expect([_event title]).to.equal(@"NSLondon");
}

- (void)testEventDescriptionFromJSON {
    expect([_event description]).to.equal(@"The very first NSLondon");
}

- (void)testEventStartDateFromJSON {
    expect([_event startDate]).to.equal([NSDate dateWithTimeIntervalSince1970:1372779600]);
}

- (void)testEventEndDateFromJSON {
    expect([_event endDate]).to.equal([NSDate dateWithTimeIntervalSince1970:1372786800]);
}

@end
