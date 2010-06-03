//
//  LKNodePlugin.h
//  Node Plug-in
//
//  Created by Nicholas Penree on 6/3/10.
//  Copyright 2010 Conceited Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "LKPluginProtocol.h"

typedef enum {
	LKSamplePluginNewsTag,
	LKSamplePluginGreetTag,
	LKSamplePluginBeautifulTag
} LKSamplePluginTag;

@protocol LKPluginProtocol, LKDatasource;

@interface LKNodePlugin : NSObject <LKPluginProtocol>
{
	id <LKDatasource> agent;
}

@property (assign) id <LKDatasource> agent;

@end