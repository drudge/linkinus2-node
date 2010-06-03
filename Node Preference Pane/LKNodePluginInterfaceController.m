//
//  LKNodePluginInterfaceController.m
//  Node Plug-in
//
//  Created by Nicholas Penree on 6/3/10.
//  Copyright 2010 Conceited Software. All rights reserved.
//

#import "LKNodePluginInterfaceController.h"
#import "LKNodePlugin+PreferencesExtensions.h"

@implementation LKNodePluginInterfaceController

- (id)init
{
	if (self = [super init])
	{
		if (![NSBundle loadNibNamed:@"Pane" owner:self])
		{
			[self release];
			self = nil;
		}
	}
	
	return self;
}

- (NSImage *)icon
{
	return nil;
}

- (NSView *)view
{
	return preferencePaneView;
}


- (void)awakeFromNib
{
	[button setState:([self pluginEnabled] ? NSOnState : NSOffState)];
	[matrix setEnabled:[self pluginEnabled]];
}

- (IBAction)statusChanged:(id)sender
{
	BOOL enabled = ([button state]==NSOnState);
	[matrix setEnabled:enabled];
	
	NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:[self preferences]];
	[dict setObject:[NSNumber numberWithBool:enabled] forKey:LKNodePluginEnabledKey];
	[self setPreferences:dict];
}

@end