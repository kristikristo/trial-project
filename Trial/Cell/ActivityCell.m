//
//  ActivityCell.m
//  Trial
//
//  Created by Kristi Kristo on 4/14/14.
//  Copyright (c) 2014 KristoTech. All rights reserved.
//

#import "ActivityCell.h"

@implementation ActivityCell
@synthesize activity;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        NSArray *nibArray = [[NSBundle mainBundle]loadNibNamed:@"ActivityCell" owner:self options:nil];
        self = [nibArray objectAtIndex:0];
        self.backgroundColor = [UIColor clearColor];        // Background color
        self.selectionStyle = UITableViewCellSelectionStyleNone;    // Remove the selection style
    }
    return self;
}

- (void)awakeFromNib
{
    // Build Interface
    // Background Container
    backgroundContainer = [[UIView alloc]init];
    [backgroundContainer setFrame:CGRectMake(5, 5, 310, 320)];
    [backgroundContainer setBackgroundColor:[UIColor whiteColor]];
    [backgroundContainer.layer setCornerRadius:4.0];
    [backgroundContainer.layer setBorderColor:[UIColor colorWithRed:209.0/255.0 green:209.0/255.0 blue:209.0/255.0 alpha:1.0].CGColor];
    [backgroundContainer.layer setBorderWidth:1.0];
    [self addSubview:backgroundContainer];
    
    // Upper View
    // - PATIENT PHOTO
    patientPhoto = [[UIImageView alloc]init];
    [patientPhoto setFrame:CGRectMake(10, 20, 35, 35)];
    patientPhoto.layer.masksToBounds = YES;
    patientPhoto.layer.cornerRadius = CGRectGetWidth(patientPhoto.bounds)/2.0f;
    [patientPhoto setContentMode:UIViewContentModeScaleAspectFill];
    [backgroundContainer addSubview:patientPhoto];
    
    // - PATIENT NAME
    patientName = [[UILabel alloc]init];
    [patientName setFrame:CGRectMake(60, 20, 150, 30)];
    [patientName setFont:[UIFont fontWithName:@"HelveticaNeue-Medium" size:18.0]];
    [patientName setTextAlignment:NSTextAlignmentLeft];
    [patientName setTextColor:[UIColor blackColor]];
    [backgroundContainer addSubview:patientName];
    
    // - PATIENT NUMBER
    patientNumber = [[UILabel alloc]init];
    [patientNumber setFrame:CGRectMake(patientName.frame.origin.x+patientName.frame.size.width+10, 20, 150, 30)];
    [patientNumber setFont:[UIFont fontWithName:@"HelveticaNeue" size:14.0]];
    [patientNumber setTextColor:[UIColor grayColor]];
    [backgroundContainer addSubview:patientNumber];
    
    // SEPERATOR
    UIView *seperator = [[UIView alloc]init];
    [seperator setFrame:CGRectMake(0, 65, backgroundContainer.frame.size.width, 1.0)];
    [seperator setBackgroundColor:[UIColor colorWithRed:209.0/255.0 green:209.0/255.0 blue:209.0/255.0 alpha:1.0]];
    [backgroundContainer addSubview:seperator];
    
    // Middle View (from 65 to 145)
    iconPhoto = [[UIImageView alloc]init];
    [iconPhoto setFrame:CGRectMake(10, 90, 30, 30)];
    [backgroundContainer addSubview:iconPhoto];
    
    // - PATIENT PROBLEM
    patientProblem = [[UILabel alloc]init];
    [patientProblem setFrame:CGRectMake(60, 65, 250, 60)];
    patientProblem.lineBreakMode = NSLineBreakByWordWrapping;
    patientProblem.numberOfLines = 2;
    [backgroundContainer addSubview:patientProblem];
    
    // - PATIENT DATE
    dateLbl = [[UILabel alloc]init];
    [dateLbl setFrame:CGRectMake(60, 120, 120, 20)];
    [dateLbl setTextAlignment:NSTextAlignmentLeft];
    [dateLbl setTextColor:[UIColor lightGrayColor]];
    [dateLbl setFont:[UIFont fontWithName:@"HelveticaNeue" size:14.0]];
    [backgroundContainer addSubview:dateLbl];
    
    // - PATIENT COMMENTS
    commentsNumber = [[UILabel alloc]init];
    [commentsNumber setFrame:CGRectMake(180, 120, 120, 20)];
    [commentsNumber setTextAlignment:NSTextAlignmentRight];
    [commentsNumber setTextColor:[UIColor lightGrayColor]];
    [commentsNumber setFont:[UIFont fontWithName:@"HelveticaNeue" size:14.0]];
    [backgroundContainer addSubview:commentsNumber];
    
    // SEPERATOR
    UIView *seperator1 = [[UIView alloc]init];
    [seperator1 setFrame:CGRectMake(0, 150, backgroundContainer.frame.size.width, 1.0)];
    [seperator1 setBackgroundColor:[UIColor colorWithRed:209.0/255.0 green:209.0/255.0 blue:209.0/255.0 alpha:1.0]];
    [backgroundContainer addSubview:seperator1];
    
    // COMMENT VIEW
    // - COMMENTOR PHOTO
    commentPhoto = [[UIImageView alloc]init];
    [commentPhoto setFrame:CGRectMake(10, 160, 35, 35)];
    commentPhoto.layer.masksToBounds = YES;
    commentPhoto.layer.cornerRadius = CGRectGetWidth(commentPhoto.bounds)/2.0f;
    [commentPhoto setContentMode:UIViewContentModeScaleAspectFill];
    [backgroundContainer addSubview:commentPhoto];
    
    // - COMMENTOR NAME
    commentName = [[UILabel alloc]init];
    [commentName setFrame:CGRectMake(60, 160, 240, 30)];
    [commentName setFont:[UIFont fontWithName:@"HelveticaNeue-Medium" size:16.0]];
    [commentName setTextAlignment:NSTextAlignmentLeft];
    [commentName setTextColor:[UIColor blackColor]];
    [backgroundContainer addSubview:commentName];
    
    // - COMMENT MESSAGE
    commentMsg = [[UILabel alloc]init];
    [commentMsg setFrame:CGRectMake(60, 180, 245, 80)];
    commentMsg.lineBreakMode = NSLineBreakByWordWrapping;
    commentMsg.numberOfLines = 4;
    [backgroundContainer addSubview:commentMsg];
    
    // FOOTER VIEW
    UIView *backgroundFooter = [[UIView alloc]init];
    [backgroundFooter setFrame:CGRectMake(0, backgroundContainer.frame.size.height-50, backgroundContainer.frame.size.width, 50)];
    [backgroundFooter setBackgroundColor:[UIColor colorWithRed:242.0/255.0 green:242.0/255.0 blue:242.0/255.0 alpha:1.0]];
    [backgroundContainer addSubview:backgroundFooter];
    
    // - COMMENT TEXT VIEW
    commentTextField = [[UITextField alloc]init];
    commentTextField.frame = CGRectMake(20, 10, 275, 30);
    [commentTextField setBackgroundColor:[UIColor whiteColor]];
    [commentTextField setPlaceholder:@"Add a comment"];
    [commentTextField.layer setCornerRadius:7.0];
    [commentTextField.layer setBorderColor:[UIColor colorWithRed:209.0/255.0 green:209.0/255.0 blue:209.0/255.0 alpha:1.0].CGColor];
    [commentTextField.layer setBorderWidth:1.0];
    [commentTextField setReturnKeyType:UIReturnKeyDone];
    [commentTextField setDelegate:self];
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    commentTextField.leftView = paddingView;
    commentTextField.leftViewMode = UITextFieldViewModeAlways;
    [backgroundFooter addSubview:commentTextField];
    


}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    patientName.text = [activity patientName];
    patientNumber.text = [activity patientNumber];
    patientPhoto.image = [activity patientPhoto];
    
    iconPhoto.image = [activity iconPhoto];
    patientProblem.text = [activity patientProblem];
    dateLbl.text = [activity dateLbl];
    commentsNumber.text = [activity commentsNumber];
    
    commentPhoto.image = [activity commentPhoto];
    commentName.text = [activity commentName];
    commentMsg.text = [activity commentMsg];
}

// HANDLE THE COMMENT DONE
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    // Dismiss the keyboard
    [textField resignFirstResponder];
    // Substitue the text
    commentMsg.text = textField.text;
    // MOST PROBABLY, WE WILL IMPLEMENT A DELEGATE TO SEND TO OUR DATA SOURCE AND UPDATE THE OBJECT
    textField.text = nil;   // Clear the text field
    return YES;
}
@end
