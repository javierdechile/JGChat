//
//  UserCellView.m
//  JGChat
//
//  Created by Javier Giovannini on 10-09-13.
//  Copyright (c) 2013 Javier Giovannini. All rights reserved.
//

#import "UserCellView.h"

@implementation UserCellView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self addSubview:self.usernameLabel];
        [self addSubview:self.leftImageView];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
