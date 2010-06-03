//
//  LKNodePlugin.m
//  Node Plug-in
//
//  Created by Nicholas Penree on 6/3/10.
//  Copyright 2010 Conceited Software. All rights reserved.
//

#import "LKNodePlugin.h"
#import "LKNodePlugin+PreferencesExtensions.h"

@implementation LKNodePlugin

@synthesize agent;

- (id <LKPluginProtocol>)initWithAgent:(id <LKDatasource>)anAgent
{
	if (self = [super init]) {
		self.agent = anAgent;
	}
	
	return self;
}

#pragma mark -
#pragma mark Catch incoming data

- (void)incomingNick:(NSMutableDictionary *)infoDict { /*NSLog(@"[%@] %@", NSStringFromSelector(_cmd), infoDict);*/ }
- (void)incomingJoin:(NSMutableDictionary *)infoDict { /*NSLog(@"[%@] %@", NSStringFromSelector(_cmd), infoDict);*/ }
- (void)incomingKick:(NSMutableDictionary *)infoDict { /*NSLog(@"[%@] %@", NSStringFromSelector(_cmd), infoDict);*/ }
- (void)incomingNotice:(NSMutableDictionary *)infoDict { /*NSLog (@"[%@] %@", NSStringFromSelector(_cmd), infoDict);*/ }
- (void)incomingPart:(NSMutableDictionary *)infoDict { /*NSLog(@"[%@] %@", NSStringFromSelector(_cmd), infoDict);*/ }
- (void)incomingQuit:(NSMutableDictionary *)infoDict { /*NSLog(@"[%@] %@", NSStringFromSelector(_cmd), infoDict);*/ }
- (void)incomingAction:(NSMutableDictionary *)infoDict { /*NSLog(@"[%@] %@", NSStringFromSelector(_cmd), infoDict);*/ }
- (void)incomingMode:(NSMutableDictionary *)infoDict { /*NSLog(@"[%@] %@", NSStringFromSelector(_cmd), infoDict);*/ }
- (void)incomingMessage:(NSMutableDictionary *)infoDict{ /*NSLog (@"[%@] %@", NSStringFromSelector(_cmd), infoDict);*/ }

#pragma mark -
#pragma mark Catch outgoing data

- (void)outgoingAway:(NSMutableDictionary *)infoDict { /*NSLog(@"[%@] %@", NSStringFromSelector(_cmd), infoDict);*/ }
- (void)outgoingMode:(NSMutableDictionary *)infoDict { /*NSLog(@"[%@] %@", NSStringFromSelector(_cmd), infoDict);*/ }
- (void)outgoingBan:(NSMutableDictionary *)infoDict { /*NSLog(@"[%@] %@", NSStringFromSelector(_cmd), infoDict);*/ }
- (void)outgoingJoin:(NSMutableDictionary *)infoDict { /*NSLog(@"[%@] %@", NSStringFromSelector(_cmd), infoDict);*/ }
- (void)outgoingKick:(NSMutableDictionary *)infoDict { /*NSLog(@"[%@] %@", NSStringFromSelector(_cmd), infoDict);*/ }
- (void)outgoingMessage:(NSMutableDictionary *)infoDict { /*NSLog(@"[%@] %@", NSStringFromSelector(_cmd), infoDict);*/ }
- (void)outgoingNotice:(NSMutableDictionary *)infoDict { /*NSLog(@"[%@] %@", NSStringFromSelector(_cmd), infoDict);*/ }
- (void)outgoingAction:(NSMutableDictionary *)infoDict { /*NSLog(@"[%@] %@", NSStringFromSelector(_cmd), infoDict);*/ }
- (void)outgoingNick:(NSMutableDictionary *)infoDict { /*NSLog(@"[%@] %@", NSStringFromSelector(_cmd), infoDict);*/ }
- (void)outgoingPart:(NSMutableDictionary *)infoDict { /*NSLog(@"[%@] %@", NSStringFromSelector(_cmd), infoDict);*/ }
- (void)outgoingQuit:(NSMutableDictionary *)infoDict { /*NSLog(@"[%@] %@", NSStringFromSelector(_cmd), infoDict);*/ }

#pragma mark -
#pragma mark Handle new commands

+ (NSArray *)availableCommands
{
	return [NSArray arrayWithObjects:@"node", nil];
}

- (void)handleCommand:(NSString *)line onConnection:(id <LKConnectionProtocol>)connection
{
	BOOL pluginEnabled = [self pluginEnabled];
	
	if (pluginEnabled) {
		//TODO: Do something
	}
}

@end