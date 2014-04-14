//
//  ActivityCell.h
//  Trial
//
//  Created by Kristi Kristo on 4/14/14.
//  Copyright (c) 2014 KristoTech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Activity.h"

@interface ActivityCell : UITableViewCell <UITextFieldDelegate>
{
    // Upper View
    UIImageView *patientPhoto;
    UILabel *patientName;
    UILabel *patientNumber;
    
    // Middle View
    UILabel *patientProblem;
    UILabel *dateLbl;
    UILabel *commentsNumber;
    UIImageView *iconPhoto;
    
    // Comment View
    UIImageView *commentPhoto;
    UILabel *commentName;
    UILabel *commentMsg;
    UITextField *commentTextField;
    
    // Interface components
    UIView *backgroundContainer;
}

// Activity Object
@property (nonatomic,strong) Activity *activity;


@end
