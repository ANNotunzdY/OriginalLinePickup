//
//  OriginalLinePickupAppDelegate.h
//  OriginalLinePickup
//
//  Created by あんのたん on 11/07/29.
//  Copyright 2011 株式会社パンカク. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface OriginalLinePickupAppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
