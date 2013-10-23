//
//  NSLVenueTests.m
//  NSLondon-iOS
//
//  Created by Kyle Fuller on 02/10/2013.
//  Copyright (c) 2013 confidence. All rights reserved.
//

#import "NSLTests.h"
#import "NSLVenue.h"


@interface NSLVenueTests : XCTestCase {
    NSLVenue *_venue;
}

@end

@implementation NSLVenueTests

- (void)setUp {
    NSDictionary *dictionary = @{
        @"name": @"Telefónica Digital",
        @"post_code": @"W1B 5AN",
        @"city": @"London",
        @"address_line_1": @"20 Air Street",
    };

    NSError *error;
    _venue = [MTLJSONAdapter modelOfClass:NSLVenue.class fromJSONDictionary:dictionary error:&error];
}

- (void)testVenueFromJSON {
    expect(_venue).notTo.beNil();
}

- (void)testVenueNameFromJSON {
    expect([_venue name]).to.equal(@"Telefónica Digital");
}

- (void)testVenuePostCodeFromJSON {
    expect([_venue postCode]).to.equal(@"W1B 5AN");
}

- (void)testVenueCityFromJSON {
    expect([_venue city]).to.equal(@"London");
}

- (void)testVenueAddressLinke1FromJSON {
    expect([_venue addressLine1]).to.equal(@"20 Air Street");
}

@end
