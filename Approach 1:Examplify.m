//  Created by Yufei Ning on 14-6-24.
//  Copyright (c) 2014年 YufeiNing. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int h, m, angleform, angleforh, angle;
        NSLog(@"pelase type the time:");
        scanf("%i : %i",&h,&m);
        
        angleform = 360 * m / 60;
        angleforh = 360 * (h % 12)/ 12 +360 * (m/60)*(1/12);
        angle     = (angleforh - angleform) % 360;
        if (angle < 0) {
            angle = -angle;
        }
        NSLog(@"The angle between hour and minite is: %i", angle);
    }
    return 0;
}
