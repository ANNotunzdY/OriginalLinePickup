//
//  OriginalLinePickupAppDelegate.m
//  OriginalLinePickup
//
//  Created by あんのたん on 11/07/29.
//  Copyright 2011 株式会社パンカク. All rights reserved.
//

#import "OriginalLinePickupAppDelegate.h"

@implementation OriginalLinePickupAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    NSString* textA = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"A" ofType:@"txt"] encoding:NSUTF8StringEncoding error:nil];
    NSArray* arrA = [textA componentsSeparatedByString:@"\n"];
    NSString* textB = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"B" ofType:@"txt"] encoding:NSUTF8StringEncoding error:nil];
    NSArray* arrB = [textB componentsSeparatedByString:@"\n"];
    
    NSMutableDictionary* dictionary = [NSMutableDictionary dictionaryWithCapacity:[arrA count]];
    for (NSString* i in arrA) {
        [dictionary setObject:[NSNull null] forKey:i];
    }
    
    for (NSString* i in arrB) {
        if (![[dictionary objectForKey:i] isEqual:[NSNull null]]) {
            NSLog(@"%@", i);
            [dictionary setObject:[NSNull null] forKey:i];
        }
    }
    
}

@end
