//
//  LKNodePlugin+PreferencesExtensions.m
//  Node Plug-in
//
//  Created by Nicholas Penree on 6/3/10.
//  Copyright 2010 Conceited Software. All rights reserved.
//

#import "LKNodePlugin+PreferencesExtensions.h"

NSString *LKNodePluginEnabledKey = @"LKNodePluginEnabled";

@implementation NSObject (LKNodePlugin_PreferencesExtensions)

- (NSDictionary *)preferences
{
	if (![[NSFileManager defaultManager] fileExistsAtPath:[self preferencesPath]]) {
		[self setPreferences:[NSDictionary dictionary]];
	}
	
	return [NSDictionary dictionaryWithContentsOfFile:[self preferencesPath]];
}

- (void)setPreferences:(NSDictionary *)dictionary
{
	[dictionary writeToFile:[self preferencesPath] atomically:YES];
}

- (NSString *)preferencesPath
{
	return [[NSString stringWithFormat:@"~/Library/Preferences/%@.plist", [[NSBundle bundleForClass:[self class]] bundleIdentifier]] stringByExpandingTildeInPath];
}

- (BOOL)pluginEnabled
{
	return [[self.preferences objectForKey:LKNodePluginEnabledKey] boolValue];
}

@end