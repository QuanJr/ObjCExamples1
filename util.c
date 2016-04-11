//
//  util.c
//  ObjCExamples
//
//  Created by Quan Jr on 4/8/16.
//  Copyright © 2016 Quan Jr. All rights reserved.
//

#include "util.h"
//C function

int add (int a,int b)
{
    return a+b;
}

long factorial (long a) {
    if (a < 2) {
        return 1;
        
    }else {
        return factorial(a-1) *a;
        
    }
}
