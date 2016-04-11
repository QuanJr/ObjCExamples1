//
//  CvsObCFunction.m
//  ObjCExamples
//
//  Created by Quan Jr on 4/8/16.
//  Copyright © 2016 Quan Jr. All rights reserved.
//

#import "CvsObCFunction.h"
#import "util.h"
#import "UtilObject.h"


@interface CvsObCFunction ()

@end

@implementation CvsObCFunction

- (void)viewDidLoad {
    
    [super viewDidLoad];
    int result = add(10, 20);
    NSLog(@"%d",result);
    UtilObject *util = [UtilObject new];
    
    result =[util addA:100 andAddB:200];
    NSLog(@"%d",result);
    result = factorial(5);
    NSLog(@"%d",result);
    result = [util factorial:5];
    NSLog(@"%d",result);
    free((__bridge void *)(util));
}
// Objective C method.
@end
