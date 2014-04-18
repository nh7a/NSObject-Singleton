//
//  NSObject+Singleton.m
//
//  Created by Naoki Hiroshima on 3/20/13.
//  Copyright (c) 2013 Naoki Hiroshima. All rights reserved.
//

#import "NSObject+Singleton.h"

static NSMutableDictionary* _singletons;

@implementation NSObject (Singleton)

+ (instancetype)singleton
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _singletons = [NSMutableDictionary dictionary];
    });
    
	id instance = nil;
	@synchronized(self) {
        NSString* klass = NSStringFromClass(self);
		instance = _singletons[klass];
		if (!instance) {
			instance = [self new];
			_singletons[klass] = instance;
		}
	}
	return instance;
}

@end