//
//  main.m
//  macApp
//
//  Created by Alan on 2021/2/19.
//

#import <Cocoa/Cocoa.h>
#import "AppDelegate.h"
int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        NSApplication*applicaton = [NSApplication sharedApplication];

        id delegete = [[AppDelegate alloc]init];

        applicaton.delegate = delegete;

        return NSApplicationMain(argc, argv);
    }
    //return NSApplicationMain(argc, argv);
}
