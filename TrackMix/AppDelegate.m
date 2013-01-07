//
//  AppDelegate.m
//  TrackMix
//
//  Created by Kedar Purohit on 12/31/12.
//  Copyright (c) 2012 Overstock.com. All rights reserved.
//

#import "AppDelegate.h"
#import "Track.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize textField = _textField;
@synthesize slider = _slider;
@synthesize track = _track;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    Track *aTrack = [[Track alloc] init];
    [self setTrack:aTrack];
    [self updateUserInterface];
}

- (IBAction)mute:(id)sender {
    [self.track setVolume:0.0];
    [self updateUserInterface];
}
- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
    float newValue = [sender floatValue];
    [self.track setVolume:newValue];
    [self updateUserInterface];    
}

- (void)updateUserInterface {
    
    float volume = [self.track volume];
    [self.textField setFloatValue:volume];
    [self.slider setFloatValue:volume];
}

@end
