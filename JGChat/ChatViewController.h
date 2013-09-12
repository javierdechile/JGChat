//
//  ChatViewController.h
//  
//
//  Created by Javier Giovannini on 10-09-13.
//
//

#import <Parse/Parse.h>

@interface ChatViewController : PFQueryTableViewController <PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textInput;

@end
