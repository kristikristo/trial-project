//
//  CommentCell.m
//  Trial
//
//  Created by Kristi Kristo on 4/14/14.
//  Copyright (c) 2014 KristoTech. All rights reserved.
//

#import "CommentCell.h"

@implementation CommentCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        NSArray *nibArray = [[NSBundle mainBundle]loadNibNamed:@"CommentCell" owner:self options:nil];
        self = [nibArray objectAtIndex:0];
        self.backgroundColor = [UIColor clearColor];        // Background color
        self.selectionStyle = UITableViewCellSelectionStyleNone;    // Remove the selection style
    }
    return self;
}

- (void)awakeFromNib
{
    UIView *backgroundContainer = [[UIView alloc]init];
    [backgroundContainer setFrame:CGRectMake(5, 5, 310, 150)];
    [backgroundContainer setBackgroundColor:[UIColor whiteColor]];
    [backgroundContainer.layer setCornerRadius:4.0];
    [backgroundContainer.layer setBorderColor:[UIColor colorWithRed:209.0/255.0 green:209.0/255.0 blue:209.0/255.0 alpha:1.0].CGColor];
    [backgroundContainer.layer setBorderWidth:1.0];
    [self addSubview:backgroundContainer];

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
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
