//
//  ViewController.m
//  Good Fucking Design Advice
//
//  Created by Connor Montgomery on 2/2/13.
//  Copyright (c) 2013 Connor Montgomery. All rights reserved.
//

#import "ViewController.h"
#import "AFHTTPClient.h"
#import "AFJSONRequestOperation.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize theFuckingText;

- (void)viewDidLoad
{
    [super viewDidLoad];
    UITapGestureRecognizer *singleFingerTap =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(setText:)];
    [self.view addGestureRecognizer:singleFingerTap];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)setText:(UITapGestureRecognizer *)recognizer {
    NSURL *url = [NSURL URLWithString:@"http://goodfuckingdesignadvice.com/refresh-advice.php"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
        
        NSString *text = [JSON valueForKeyPath:@"new_advice"];
        [theFuckingText setText:text];
    } failure:nil];
    
    [operation start];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
