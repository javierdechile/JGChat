//
//  UsersViewController.h
//  JGChat
//
//  Created by Javier Giovannini on 09-09-13.
//  Copyright (c) 2013 Javier Giovannini. All rights reserved.
//

#import <Parse/Parse.h>

@interface UsersViewController : PFQueryTableViewController  <PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate>

@end
