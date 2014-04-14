//
//  infoVC.m
//  Trial
//
//  Created by Kristi Kristo on 4/14/14.
//  Copyright (c) 2014 KristoTech. All rights reserved.
//

#import "infoVC.h"
#import "CommentCell.h"

@interface infoVC ()

@end

@implementation infoVC

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        self.title = @"Emergency Dischage";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // UIBarButtonItem for settings
    UIButton *customButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    [customButton addTarget:self action:@selector(openSettings) forControlEvents:UIControlEventTouchUpInside];
    [customButton setImage:[UIImage imageNamed:@"settings"] forState:UIControlStateNormal];
    UIBarButtonItem *rightBarBtn = [[UIBarButtonItem alloc]initWithCustomView:customButton];
    self.navigationItem.rightBarButtonItem = rightBarBtn;

    // Build UITableView header
    UIView *header = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 300)];
    [header setBackgroundColor:[UIColor whiteColor]];
    [self.tableView setTableHeaderView:header];
    
    // - PATIENT PHOTO
    patientPhoto = [[UIImageView alloc]init];
    [patientPhoto setFrame:CGRectMake(10, 20, 50, 50)];
    patientPhoto.layer.masksToBounds = YES;
    patientPhoto.layer.cornerRadius = CGRectGetWidth(patientPhoto.bounds)/2.0f;
    [patientPhoto setContentMode:UIViewContentModeScaleAspectFill];
    [patientPhoto setImage:[UIImage imageNamed:@"photo.jpg"]];
    [header addSubview:patientPhoto];
    
    // - PATIENT NAME
    patientName = [[UILabel alloc]init];
    [patientName setFrame:CGRectMake(80, 10, 240, 30)];
    [patientName setFont:[UIFont fontWithName:@"HelveticaNeue-Medium" size:20.0]];
    [patientName setTextAlignment:NSTextAlignmentLeft];
    [patientName setTextColor:[UIColor blackColor]];
    [patientName setText:@"Janice Smith"];
    [header addSubview:patientName];
    
    // - PATIENT NUMBER
    patientNumber = [[UILabel alloc]init];
    [patientNumber setFrame:CGRectMake(80, 40, 240, 30)];
    [patientNumber setFont:[UIFont fontWithName:@"HelveticaNeue" size:14.0]];
    [patientNumber setTextColor:[UIColor grayColor]];
    patientNumber.text = @"F.8.24.69  MRN:2345424535";
    [header addSubview:patientNumber];
    
    // - PATIENT LOCATION
    patientLocation = [[UILabel alloc]init];
    [patientLocation setFrame:CGRectMake(80, 65, 200, 30)];
    [patientLocation setFont:[UIFont fontWithName:@"HelveticaNeue" size:16.0]];
    [patientLocation setTextColor:[UIColor blackColor]];
    patientLocation.text = @"Sinai Hospital of Baltimore";
    [header addSubview:patientLocation];
    
    // - CALL BUTTON
    callBtn = [UIButton buttonWithType:UIButtonTypeInfoLight];
    callBtn.frame = CGRectMake(280, 65, 30, 30);
    [header addSubview:callBtn];
    
    // SEPERATOR
    UIView *seperator = [[UIView alloc]init];
    [seperator setFrame:CGRectMake(0, 100, self.view.frame.size.width, 1.0)];
    [seperator setBackgroundColor:[UIColor colorWithRed:209.0/255.0 green:209.0/255.0 blue:209.0/255.0 alpha:1.0]];
    [header addSubview:seperator];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Name: Settings
// Desc: Open Settings VC
- (void)openSettings
{
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    CommentCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell==nil) {
        cell = [[CommentCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        
    }
    cell.textLabel.text = @"TEST";
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
