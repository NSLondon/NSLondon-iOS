//
//  NSLUserTests.m
//  NSLondon-iOS
//
//  Created by Kyle Fuller on 02/10/2013.
//  Copyright (c) 2013 NSLondon. All rights reserved.
//

#import "NSLTests.h"
#import "NSLUser.h"

@interface NSLUserTests : XCTestCase {
    NSLUser *_user;
}

@end

@implementation NSLUserTests

- (void)setUp {
    NSDictionary *dictionary = @{
        @"name": @"Daniel Haight",
        @"is_speaker": @YES,
        @"is_organiser": @YES,
    };

    NSError *error;
    _user = [MTLJSONAdapter modelOfClass:NSLUser.class fromJSONDictionary:dictionary error:&error];
}

- (void)testUserFromJSON {
    expect(_user).notTo.beNil();
}

- (void)testUserIsSpeakerFromJSON {
    expect([_user isSpeaker]).to.beTruthy();
}

- (void)testUserIsOrganiserFromJSON {
    expect([_user isOrganiser]).to.beTruthy();
}

@end
