//
//  DemoFunction.m
//  ObjCExamples
//
//  Created by Quan Jr on 4/8/16.
//  Copyright © 2016 Quan Jr. All rights reserved.
//

#import "DemoFunction.h"

@interface DemoFunction ()

@end

@implementation DemoFunction

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
    [self writeln:@"Demo Function"];
    [self writeln:@"Helllo COD"];
    [self sayFirsName:@"Steve" amdLastName:@"Jobs"];
    
    float tempDegree = 30.1;
    NSString *result =[NSString stringWithFormat:@"%2.1f degree equal to %3.1f F",tempDegree, [self celciusToFahrenheit:tempDegree]];
   //  NSString *str = [NSString stringWithFormat:@"%@", @"Xin chao ban"];
   //  NSLog(@"%@", str);
    //[self writeln:result];
    
    // @(30.1) == [[NSNumber alloc] initWithFloat:30.1
    
    [self performSelector:@selector(celciusToFahrenheit)];
    [self performSelector:@selector(celciusToFahrenheit2:) withObject:@(30.1)];
    
}

-(void) sayFirsName:(NSString *) firsName amdLastName:(NSString *)lastName
{
    NSLog(@"%@ %@", firsName, lastName);
    
}

-(float) celciusToFahrenheit:(float)degree {
    
    return degree *1.8+32.0;
}

-(void)celciusToFahrenheit {// overloading
    NSLog(@"Do nothing");
    
}

- (float) celciusToFahrenheit2{//overridding but incorrect.
    return 10.1;
    
}
-(void) celciusToFahrenheit2:(NSNumber *) degree {
    float result = [degree floatValue] *1.8 +32.0;
    NSLog(@"Result = %2.1f",result);
    
}
@end
