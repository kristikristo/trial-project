//
//  ActivityTableView.h
//  Trial
//
//  Created by Kristi Kristo on 4/14/14.
//  Copyright (c) 2014 KristoTech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActivityTableView : UITableViewController
{
    // Data source
    NSMutableArray *data;
}
- (void)compose;

@end
