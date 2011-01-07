// HAXSystemWideElement.m
// Created by Rob Rix on 2011-01-06
// Copyright 2011 Monochrome Industries

#import "HAXApplication.h"
#import "HAXSystemWideElement.h"
#import "HAXElement+Protected.h"

@implementation HAXSystemWideElement

+(HAXSystemWideElement *)element {
	return [self elementWithElementRef:CFMakeCollectable(AXUIElementCreateSystemWide())];
}


-(HAXApplication *)focusedApplication {
	NSError *error = nil;
	return [self elementOfClass:[HAXApplication class] forKey:(NSString *)kAXFocusedApplicationAttribute error:&error];
}

@end
