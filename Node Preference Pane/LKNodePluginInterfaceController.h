//
//  LKNodePluginInterfaceController.h
//  Node Plug-in
//
//  Created by Nicholas Penree on 6/3/10.
//  Copyright 2010 Conceited Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "LKPluginProtocol.h"

@protocol LKPluginInterfaceControllerProtocol;

@interface LKNodePluginInterfaceController : NSObject <LKPluginInterfaceControllerProtocol>
{	
	IBOutlet NSButton *button;
	IBOutlet NSMatrix *matrix;
	IBOutlet NSView *preferencePaneView;
}

- (IBAction)statusChanged:(id)sender;

@end