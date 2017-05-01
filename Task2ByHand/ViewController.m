//
//  ViewController.m
//  Task2ByHand
//
//  Created by melanu on 01.05.17.
//  Copyright © 2017 melanu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>{
    UITextField *tfFirstName;
    UITextField *tfLastName;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(120, 150, 100, 50)];
    [button setTitle:@"Hello!!!" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor greenColor]];
    [button addTarget:self action:@selector(showHello) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UILabel *lFirstName = [[UILabel alloc]initWithFrame:CGRectMake(20, 50, 100, 50)];
    UILabel *lLastName = [[UILabel alloc]initWithFrame:CGRectMake(20, 100, 100, 50)];
    [lFirstName setText:@"firstName"];
    [lLastName setText:@"lastName"];
    [lFirstName setTextColor:[UIColor redColor]];
    [lLastName setTextColor:[UIColor redColor]];
    [self.view addSubview:lFirstName];
    [self.view addSubview:lLastName];
    
    tfFirstName = [[UITextField alloc]initWithFrame:CGRectMake(100, 50, 100, 30)];
    tfLastName = [[UITextField alloc]initWithFrame:CGRectMake(100, 100, 100, 30)];
    [tfFirstName setBorderStyle:UITextBorderStyleRoundedRect];
    [tfLastName setBorderStyle:UITextBorderStyleRoundedRect];
    [tfFirstName setBackgroundColor:[UIColor whiteColor]];
    [tfLastName setBackgroundColor:[UIColor whiteColor]];
    tfFirstName.keyboardAppearance = UIKeyboardAppearanceDark;
    tfLastName.keyboardAppearance = UIKeyboardAppearanceLight;
    [self.view addSubview:tfFirstName];
    [self.view addSubview:tfLastName];
    tfFirstName.delegate = self;
    tfLastName.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showHello{
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Hello" message:[NSString stringWithFormat:@"%@ %@",tfFirstName.text, tfLastName.text] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alertView show];
    /*NSString *str = [NSString stringWithFormat:@"%@ %@", tfFirstName, tfLastName ];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Hello" message:str preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertViewStyleDefault handler:(^UIAlertAction *action){
     
    }];
    */
    
}

@end
