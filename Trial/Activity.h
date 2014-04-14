//
//  Activity.h
//  Trial
//
//  Created by Kristi Kristo on 4/14/14.
//  Copyright (c) 2014 KristoTech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Activity : NSObject

@property (nonatomic,strong) UIImage *patientPhoto;
@property (nonatomic,strong) NSString *patientName;
@property (nonatomic,strong) NSString *patientNumber;

@property (nonatomic,strong) NSString *patientProblem;
@property (nonatomic,strong) NSString *dateLbl;
@property (nonatomic,strong) NSString *commentsNumber;
@property (nonatomic,strong) UIImage *iconPhoto;

@property (nonatomic,strong) UIImage *commentPhoto;
@property (nonatomic,strong) NSString *commentName;
@property (nonatomic,strong) NSString *commentMsg;


@end
