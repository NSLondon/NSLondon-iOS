//
//  NSLUser.h
//  NSLondon-iOS
//
//  Created by Kyle Fuller on 20/10/2013.
//  Copyright (c) 2013 NSLondon. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface NSLUser : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign, getter = isSpeaker) BOOL speaker;
@property (nonatomic, assign, getter = isOrganiser) BOOL organiser;

@end
