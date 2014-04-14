//
//  ActivityTableView.m
//  Trial
//
//  Created by Kristi Kristo on 4/14/14.
//  Copyright (c) 2014 KristoTech. All rights reserved.
//

#import "ActivityTableView.h"
#import "ActivityCell.h"
#import "composeVC.h"
#import "Activity.h"
#import "infoVC.h"
@interface ActivityTableView ()

@end

@implementation ActivityTableView

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        self.title = @"Patient Posts";
        
        // Change some proporties of the TableView
        self.tableView.separatorColor = [UIColor clearColor];
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.tableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]
                                              initWithBarButtonSystemItem:UIBarButtonSystemItemCompose
                                              target:self
                                              action:@selector(compose)];
    
    // Allocate the data array
    data = [NSMutableArray arrayWithCapacity:2];
    
    // Allocate 3 activity objects (which will be retrieved from web service)
    Activity *a = [[Activity alloc]init];
    [a setPatientName:@"Janice Smith"];
    [a setPatientNumber:@"F.8.24.46"];
    [a setPatientPhoto:[UIImage imageNamed:@"photo.jpg"]];
    [a setPatientProblem:@"Ankle Fracture"];
    [a setDateLbl:@"4:34 PM"];
    [a setCommentsNumber:@"5 comments"];
    [a setIconPhoto:[UIImage imageNamed:@"checkmark.png"]];
    [a setCommentPhoto:[UIImage imageNamed:@"photo.jpg"]];
    [a setCommentName:@"Nancy Jackson, RN"];
    [a setCommentMsg:@"I'll put her in a splint for a few days until the swelling goes down and then she'll need an ORIF"];
    [data addObject:a];
    
    Activity *b = [[Activity alloc]init];
    [b setPatientName:@"Diane Holmes"];
    [b setPatientNumber:@"F.05.01.1950"];
    [b setPatientPhoto:[UIImage imageNamed:@"photo.jpg"]];
    [b setPatientProblem:@"Ischemic Foot"];
    [b setDateLbl:@"Today 5:37 AM"];
    [b setCommentsNumber:@"5 comments"];
    [b setIconPhoto:[UIImage imageNamed:@"checkmark.png"]];
    [b setCommentPhoto:[UIImage imageNamed:@"photo.jpg"]];
    [b setCommentName:@"Alan Smith, MD"];
    [b setCommentMsg:@"MS Holmes was admitted with hypertension, hyperglycemia and found to have a cold right foot. Dr Wonder saw her and took her blablabla"];
    [data addObject:b];
    Activity *c = [[Activity alloc]init];
    [c setPatientName:@"Kristi Kristo"];
    [c setPatientNumber:@"F.10.10"];
    [c setPatientPhoto:[UIImage imageNamed:@"photo.jpg"]];
    [c setPatientProblem:@"No problem till now (hopefully I will stay away from them)"];
    [c setDateLbl:@"10:05PM"];
    [c setCommentsNumber:@"10 comments"];
    [c setIconPhoto:[UIImage imageNamed:@"checkmark.png"]];
    [c setCommentPhoto:[UIImage imageNamed:@"photo.jpg"]];
    [c setCommentName:@"Someone"];
    [c setCommentMsg:@"What the hell u doin here than :P"];
    [data addObject:c];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Name: Compose
// Desc: Compose to handle the UIBarButtonItem touch
- (void)compose
{
    // Push the Compose View Controller
    [self.navigationController pushViewController:[[composeVC alloc]init] animated:YES];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [data count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    ActivityCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell==nil) {
        cell = [[ActivityCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        
    }
    cell.activity = [data objectAtIndex:indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 340;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Show the more info VC
    // We can push a property (object) to the new created VC, in order to show data, or we can take them directly from the ws in the vc
    [self.navigationController pushViewController:[[infoVC alloc]init] animated:YES];
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
