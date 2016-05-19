//
//  NSString+POSRx.m
//  POSRx
//
//  Created by Osipov on 06.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "NSString+POSRx.h"

@implementation NSString (POSRx)

- (NSURL *)posrx_URL {
    return [NSURL URLWithString:self];
}

- (NSString *)posrx_percentEscaped {
    return [self posrx_percentEscapedWithEscapingSymbols:@"!*'();:@&=+$,/?%#[]"];
}

- (NSString *)posrx_percentEscapedWithEscapingSymbols:(NSString *)symbols {
    return (__bridge_transfer NSString*)CFURLCreateStringByAddingPercentEscapes(
                kCFAllocatorDefault,
                (CFStringRef)self,
                NULL,
                (CFStringRef)symbols,
                kCFStringEncodingUTF8);
}

@end
