/**
 * Copyright (C) 2013 Qualcomm Retail Solutions, Inc. All rights reserved.
 *
 * This software is the confidential and proprietary information of Qualcomm
 * Retail Solutions, Inc.
 *
 * The following sample code illustrates various aspects of the FYX iOS SDK.
 *
 * The sample code herein is provided for your convenience, and has not been
 * tested or designed to work on any particular system configuration. It is
 * provided pursuant to the License Agreement for FYX Software and Developer
 * Portal AS IS, and your use of this sample code, whether as provided or with
 * any modification, is at your own risk. Neither Qualcomm Retail Solutions,
 * Inc. nor any affiliate takes any liability nor responsibility with respect
 * to the sample code, and disclaims all warranties, express and implied,
 * including without limitation warranties on merchantability, fitness for a
 * specified purpose, and against infringement.
 */
#import "Transmitter.h"

@implementation Transmitter

-(NSMutableDictionary *)toJSON {
    NSMutableDictionary *transmitter = [[NSMutableDictionary alloc] init];
    [transmitter setObject:self.name forKey:@"name"];
    [transmitter setObject:self.identifier forKey:@"identifier"];
    [transmitter setObject:[NSString stringWithFormat:@"%@", self.rssi] forKey:@"rssi"];
    [transmitter setObject:[NSString stringWithFormat:@"%@", self.batteryLevel] forKey:@"batteryLevel"];
    [transmitter setObject:[NSString stringWithFormat:@"%@", self.temperature] forKey:@"temperature"];
    return transmitter;
}

@end
