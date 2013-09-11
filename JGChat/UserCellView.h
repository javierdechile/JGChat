//
//  UserCellView.h
//  JGChat
//
//  Created by Javier Giovannini on 10-09-13.
//  Copyright (c) 2013 Javier Giovannini. All rights reserved.
//

#import <Parse/Parse.h>

@interface UserCellView : PFTableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *leftImageView;
@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;

@end
