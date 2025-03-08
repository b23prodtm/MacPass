//
//  MPMacKeyCode.m
//  MacPass
//
//  Created by MacPro1 on 08/03/2025.
//  Copyright © 2025 HicknHack Software GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MPMacKeyCode.h"

@implementation MPMacKeyCode

- (instancetype)initWithKeyCode:(unsigned short)keyCode modifierFlags:(NSUInteger)flags {
  self = [super init];
  if (self) {
    _keyCode = keyCode;
    _flags = flags;
  }
  return self;
}

// NSCoding methods
- (void)encodeWithCoder:(NSCoder *)coder {
  [coder encodeInt:self.keyCode forKey:NSStringFromSelector(@selector(keyCode))];
  [coder encodeInteger:self.flags forKey:NSStringFromSelector(@selector(flags))];
}

- (instancetype)initWithCoder:(NSCoder *)coder {
  self = [super init];
  if (self) {
    _keyCode = [coder decodeIntegerForKey:NSStringFromSelector(@selector(keyCode))];
    _flags = [coder decodeIntegerForKey:NSStringFromSelector(@selector(flags))];
  }
  return self;
}

@end
