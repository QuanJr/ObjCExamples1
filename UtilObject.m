//
//  UtilObject.m
//  ObjCExamples
//
//  Created by Quan Jr on 4/8/16.
//  Copyright © 2016 Quan Jr. All rights reserved.
//

#import "UtilObject.h"

@implementation UtilObject

-(int) addA : (int)a  andAddB: (int)b {
    return a + b;
}
-(long) factorial:(long) a
{
    if (a<2) {
        return 1;
        
    }else{
        return  [self factorial:a-1] *a;
        
    }
}
@end
