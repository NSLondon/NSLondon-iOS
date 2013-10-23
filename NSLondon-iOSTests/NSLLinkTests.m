//
//  NSLLinkTests.m
//  NSLondon-iOS
//
//  Created by Kyle Fuller on 02/10/2013.
//  Copyright (c) 2013 NSLondon. All rights reserved.
//

#import "NSLTests.h"
#import "NSLLink.h"


@interface NSLLinkTests : XCTestCase {
    NSLLink *_link;
}

@end

@implementation NSLLinkTests

- (void)setUp {
    NSDictionary *dictionary = @{
        @"name": @"Kyle's Blog",
        @"url": @"http://kylefuller.co.uk/",
        @"is_embed": @YES,
    };

    NSError *error;
    _link = [MTLJSONAdapter modelOfClass:NSLLink.class fromJSONDictionary:dictionary error:&error];
}

- (void)testLinkFromJSON {
    expect(_link).notTo.beNil();
}

- (void)testLinkNameFromJSON {
    expect([_link name]).to.equal(@"Kyle's Blog");
}

- (void)testLinkURLFromJSON {
    expect([_link URL]).to.equal([NSURL URLWithString:@"http://kylefuller.co.uk/"]);
}

- (void)testLinkIsEmbedFromJSON {
    expect([_link isEmbed]).to.beTruthy();
}

@end
