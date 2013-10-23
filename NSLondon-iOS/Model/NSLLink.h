//
//  NSLLink.h
//  NSLondon-iOS
//
//  Created by Kyle Fuller on 22/09/2013.
//  Copyright (c) 2013 NSLondon. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface NSLLink : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong, readonly) NSString *name;
@property (nonatomic, strong, readonly) NSURL *URL;
@property (nonatomic, assign, readonly, getter = isEmbed) BOOL embed;

@end
