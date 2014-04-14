//
//  infoVC.h
//  Trial
//
//  Created by Kristi Kristo on 4/14/14.
//  Copyright (c) 2014 KristoTech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface infoVC : UITableViewController
{
    // Header View
    // FIRST PART
    UIImageView *patientPhoto;
    UILabel *patientName;
    UILabel *patientNumber;
    UILabel *patientLocation;
    UIButton *callBtn;
}

- (void)openSettings;

@end
