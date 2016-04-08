//
//  DemoSelector.m
//  ObjCExamples
//
//  Created by Quan Jr on 4/8/16.
//  Copyright © 2016 Quan Jr. All rights reserved.
//

#import "DemoSelector.h"

@interface DemoSelector ()
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation DemoSelector

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self performSelector:@selector(hideSlider) withObject:nil afterDelay:2];
    
}
-(void) doCrunchData
{
    [NSThread sleepForTimeInterval:5];
}

- (IBAction)onCrunchData:(id)sender {
   //[self performSelectorInBackground:@selector(doCrunchData) withObject:nil];
    
 // [self performSelectorOnMainThread:@selector(doCrunchData) withObject:nil waitUntilDone:true];
    [self performSelectorOnMainThread:@selector(processData:) withObject:@{@"COD is ": @"COD",@"Qjr":@"who am I?"} waitUntilDone:true];
}

-(void) processData: (NSDictionary*) data {
    for (NSString *key in[data allKeys]) {
        NSLog(@"%@ - %@",key, [data valueForKey:key]);
    }
}

-(void) hideSlider
{
    self.slider.hidden = true;
    
}
@end
