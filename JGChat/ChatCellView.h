//
//  ChatCellView.h
//  JGChat
//
//  Created by Javier Giovannini on 10-09-13.
//  Copyright (c) 2013 Javier Giovannini. All rights reserved.
//

#import <Parse/Parse.h>

@interface ChatCellView : PFTableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UITextView *messageTextView;

@end
