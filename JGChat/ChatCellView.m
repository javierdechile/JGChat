//
//  ChatCellView.m
//  JGChat
//
//  Created by Javier Giovannini on 10-09-13.
//  Copyright (c) 2013 Javier Giovannini. All rights reserved.
//

#import "ChatCellView.h"

@implementation ChatCellView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code

    }
    return self;
}

-(void) setupCellWithStyle:(NSString*)cellStyle{
    if ([cellStyle isEqualToString:@"right"]) {
        self.contentView.backgroundColor = [UIColor colorWithRed:0.1 green:0.6 blue:0.1 alpha:0.8];
    }
    else{
        self.contentView.backgroundColor = [UIColor colorWithRed:0.2 green:0.2 blue:0.4 alpha:0.8];
    }

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
