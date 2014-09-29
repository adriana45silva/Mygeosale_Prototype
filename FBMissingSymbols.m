//
//  FBMissingSymbols.m
//  mygeosale
//
//  Created by Adriana Silva on 9/29/14.
//  Copyright (c) 2014 mygeosale. All rights reserved.
//

#import "FBMissingSymbols.h"

@interface FBMissingSymbols ()

@end


NSString *FBTokenInformationExpirationDateKey = @"";
NSString *FBTokenInformationTokenKey = @"";
NSString *FBTokenInformationUserFBIDKey = @"";
NSString *SLServiceTypeTwitter = @"";
NSString *ACAccountTypeIdentifierTwitter = @"";
@interface FBAppCall:NSObject
@end
@implementation FBAppCall
@end
@interface FBRequest:NSObject
@end
@implementation FBRequest
@end
@interface FBSession:NSObject
@end
@implementation FBSession
@end
@interface FBSessionTokenCaching:NSObject
@end
@implementation FBSessionTokenCaching
@end
@interface FBSessionTokenCachingStrategy:NSObject
@end
@implementation FBSessionTokenCachingStrategy
@end
@interface ACAccountStore:NSObject
@end
@implementation ACAccountStore
@end
@interface SLRequest:NSObject
@end
@implementation SLRequest
@end
@interface SLComposeViewController:NSObject
@end
@implementation SLComposeViewController
@end

@implementation FBMissingSymbols

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
