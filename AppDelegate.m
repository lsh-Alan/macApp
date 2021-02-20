//
//  AppDelegate.m
//  macApp
//
//  Created by Alan on 2021/2/19.
//

#import "AppDelegate.h"

#import "FirstViewController.h"
@interface AppDelegate ()

@property (nonatomic, strong) NSWindow *window;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    

    //建立主window
    self.window = [NSWindow new];
    //設定主window初始大小
    [self.window setFrame:CGRectMake(0, 0, 800, 500) display:YES];
    self.window.collectionBehavior = NSWindowCollectionBehaviorFullScreenPrimary|NSWindowCollectionBehaviorDefault|NSWindowCollectionBehaviorManaged;
    [self.window center];
    self.window.styleMask = NSWindowStyleMaskTitled | NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskResizable | NSWindowStyleMaskClosable | NSWindowStyleMaskTexturedBackground;
    [self.window becomeKeyWindow];
    [NSApp beginModalSessionForWindow:self.window];

    self.window.backgroundColor = [NSColor whiteColor];
    
    NSWindowController *windowVC = [[NSWindowController alloc] initWithWindow:self.window];
    windowVC.contentViewController = [[FirstViewController alloc] init];
    
    //self.window.windowController = windowVC;
    
    //[windowVC showWindow:self.window];
    
    
    
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
