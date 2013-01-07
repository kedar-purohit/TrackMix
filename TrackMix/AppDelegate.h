//
//  AppDelegate.h
//  TrackMix
//
//  Created by Kedar Purohit on 12/31/12.
//  Copyright (c) 2012 Overstock.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Track;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSSlider *slider;
@property (strong) Track *track;

- (IBAction)mute:(id)sender;
- (IBAction)takeFloatValueForVolumeFrom:(id)sender;
- (void)updateUserInterface;

@end
