//
//  POSHTTPHEAD.h
//  POSNetworking
//
//  Created by Pavel Osipov on 03/07/2018.
//  Copyright © 2018 Pavel Osipov. All rights reserved.
//

#import "POSHTTPRequestBuilder.h"

NS_ASSUME_NONNULL_BEGIN

@interface POSHTTPHEAD : POSHTTPRequestBuilder

- (instancetype)init NS_DESIGNATED_INITIALIZER;
- (instancetype)initWithHTTPMethod:(NSString *)HTTPMethod NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
