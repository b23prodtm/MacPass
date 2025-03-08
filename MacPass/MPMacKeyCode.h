//
//  MPMacKeyCode.h
//  MacPass
//
//  Created by MacPro1 on 08/03/2025.
//  Copyright © 2025 HicknHack Software GmbH. All rights reserved.
//

#ifndef MPMacKeyCode_h
#define MPMacKeyCode_h

#import <Foundation/Foundation.h>

@interface MPMacKeyCode : NSObject <NSCoding>

@property (nonatomic, assign) short keyCode;
@property (nonatomic, assign) NSUInteger flags;

- (instancetype)initWithKeyCode:(unsigned short)keyCode modifierFlags:(NSUInteger)flags;

@end

#endif /* MPMacKeyCode_h */
