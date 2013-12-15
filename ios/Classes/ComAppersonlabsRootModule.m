/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "ComAppersonlabsRootModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#import "JBroken.h"

@implementation ComAppersonlabsRootModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"5e7b7b46-9687-419e-8152-4796d1cc40b2";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"com.appersonlabs.root";
}

#pragma Public APIs

-(id)isRooted:(id)args
{
    NSLog(@"called isRooted %d", isDeviceJailbroken());
    if(isDeviceJailbroken()) {
        return NUMBOOL(true);
    }
    return NUMBOOL(false);
}

-(id)isBoughtFromAppStore:(id)args
{
	if(isAppCracked() || !isAppStoreVersion()) {
        return NUMBOOL(false);
    }
    return (true);
}

@end
