//
//  ViewController.h
//  Task2ByHand
//
//  Created by melanu on 01.05.17.
//  Copyright © 2017 melanu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, unsafe_unretained) IBOutlet UITextField *firstName;
@property (nonatomic, unsafe_unretained) IBOutlet UITextField *lastName;
@property (nonatomic, unsafe_unretained) IBOutlet UIButton *buttonHelloName;
@property (nonatomic, unsafe_unretained) IBOutlet UIButton *buttonJump;
@property (nonatomic, unsafe_unretained) IBOutlet UILabel *lFirstName;
@property (nonatomic, unsafe_unretained) IBOutlet UILabel *lLastName;
@property (nonatomic, unsafe_unretained) IBOutlet UILabel *myLabel;

-(IBAction)buttonHello:(id)sender;
-(IBAction)buttonJump:(id)sender;

@end

