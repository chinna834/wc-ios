//
//  BannerLoginViewController.m
//  Wheaton App
//
//  Created by Chris Anderson on 2/19/14.
//
//

#import "BannerLoginViewController.h"
#import "Banner.h"

@interface BannerLoginViewController ()

@end

@implementation BannerLoginViewController

@synthesize email, password;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 1;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (email.text.length <= 0 && password.text.length <= 0) {
        return NO;
    }
    
    NSDictionary *user = @{
                           @"email": email.text,
                           @"password": password.text,
                           @"uuid": [[NSUserDefaults standardUserDefaults] objectForKey:@"uuid"],
                           @"token": [[NSUserDefaults standardUserDefaults] objectForKey:@"token"] };
    
    [Banner setUser:user success:^(NSDictionary *response) {
        UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Success"
                                                          message:@"Thanks for logging in!"
                                                         delegate:nil
                                                cancelButtonTitle:@"OK"
                                                otherButtonTitles:nil];
        [message show];
        [self resignFirstResponder];
        [self.navigationController popViewControllerAnimated:YES];
    } failure:^(NSError *error) {
        UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Error"
                                                          message:@"Incorrect username or password"
                                                         delegate:nil
                                                cancelButtonTitle:@"OK"
                                                otherButtonTitles:nil];
        [message show];
    }];
    
    return YES;
}

@end
