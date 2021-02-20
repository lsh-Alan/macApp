//
//  FirstViewController.m
//  macApp
//
//  Created by Alan on 2021/2/19.
//

#import "FirstViewController.h"
#import <AFNetworking.h>
#import "SecondViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"===========FirstViewController");
    
    NSWindow *window = self.view.window;
    NSWindow *window1 = [NSApplication sharedApplication].keyWindow;
    
     self.title = @"我是标题";
 
     CGRect rect = self.view.bounds;
 
     NSLog(@"-------%@",NSStringFromRect(rect));
 
 
     NSButton *button = [NSButton buttonWithTitle:@"按钮" target:self action:@selector(buttonClicked)];
 
     [button setFrame:CGRectMake(0, 0, 300, 200)];
     //[button setTitle:@"我是按钮"];
     button.wantsLayer = YES;
     button.layer.backgroundColor = [NSColor grayColor].CGColor;
     
     [self.view addSubview:button];
     
     self.view.wantsLayer = true;
     self.view.layer.backgroundColor = [NSColor whiteColor].CGColor;
     [self.view setNeedsDisplay:YES];
     
    
 }

 - (void)buttonClicked
 {
     
     SecondViewController *vc = [[SecondViewController alloc] init];
     
     // 重新开启了一个window
     //[self presentViewControllerAsModalWindow:vc];
     
     
     //类似sheet 从上到下
     //[self presentViewControllerAsSheet:vc];
     //[self dismissController:self];
     
   
     //Popver方式切换
     [self presentViewController:vc
          asPopoverRelativeToRect:self.view.frame
                           ofView:self.view
                    preferredEdge:NSMinYEdge
                         behavior:NSPopoverBehaviorTransient];

     
     //AFHTTPSessionManager *m = [[AFHTTPSessionManager alloc] init];
 
     NSLog(@" =============我被点击了    ");
 }
 

@end
