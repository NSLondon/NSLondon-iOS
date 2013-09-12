//
//  NSLVenue.h
//  NSLondon-iOS
//
//  Created by Kyle Fuller on 22/09/2013.
//  Copyright (c) 2013 NSLondon. All rights reserved.
//

#import "MTLModel.h"

@interface NSLVenue : MTLModel

@property (nonatomic, strong, readonly) NSString *name;

@property (nonatomic, assign, readonly) CGFloat latitude;
@property (nonatomic, assign, readonly) CGFloat longtitude;

@property (nonatomic, strong, readonly) NSString *addressLine1;
@property (nonatomic, strong, readonly) NSString *addressLine2;
@property (nonatomic, strong, readonly) NSString *city;
@property (nonatomic, strong, readonly) NSString *county;
@property (nonatomic, strong, readonly) NSString *postCode;
@property (nonatomic, strong, readonly) NSString *country;

@property (nonatomic, strong, readonly) NSString *notes;

@end
