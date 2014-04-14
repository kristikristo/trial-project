//
//  Activity.m
//  Trial
//
//  Created by Kristi Kristo on 4/14/14.
//  Copyright (c) 2014 KristoTech. All rights reserved.
//

#import "Activity.h"

@implementation Activity
// Synthesize the proporties to use getters and setters
@synthesize patientPhoto;
@synthesize patientName;
@synthesize patientNumber;
@synthesize patientProblem;
@synthesize dateLbl;
@synthesize commentsNumber;
@synthesize iconPhoto;
@synthesize commentMsg;
@synthesize commentName;
@synthesize commentPhoto;


- (id)init {
    self = [super init];
    if (self) {
        // We can init all default values in here.
    }
    return self;
}
@end
