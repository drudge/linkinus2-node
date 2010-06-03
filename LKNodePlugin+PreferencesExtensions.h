//
//  LKNodePlugin+PreferencesExtensions.h
//  Node Plug-in
//
//  Created by Nicholas Penree on 6/3/10.
//  Copyright 2010 Conceited Software. All rights reserved.
//

#import <Cocoa/Cocoa.h> 

extern NSString *LKNodePluginEnabledKey;

@interface NSObject (LKNodePlugin_PreferencesExtensions)

@property (assign) NSDictionary *preferences;
@property (readonly) NSString *preferencesPath;
@property (readonly) BOOL pluginEnabled;

@end
