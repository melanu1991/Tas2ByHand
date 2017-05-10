//
//  ViewController.m
//  Task2ByHand
//
//  Created by melanu on 01.05.17.
//  Copyright © 2017 melanu. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController () /*<UITextFieldDelegate>{
    UITextField *tfFirstName;
    UITextField *tfLastName;
}*/
@end

@implementation ViewController

@synthesize firstName = _firstName, lastName = _lastName, buttonHelloName = _buttonHelloName, lFirstName = _lFirstName, lLastName = _lLastName, buttonJump = _buttonJump, myLabel = _myLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(110, 200, 100, 30)];
    [button setTitle:@"Hello!!!" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor greenColor]];
    /*[button addTarget:self action:@selector(showHello) forControlEvents:UIControlEventTouchUpInside];*/
    [self.view addSubview:button];
    _buttonHelloName = button;
    [_buttonHelloName addTarget:self action:@selector(buttonHello:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *buttonJump = [[UIButton alloc]initWithFrame:CGRectMake(60, 250, 200, 30)];
    [buttonJump setTitle:@"Jump on new view!!!" forState:UIControlStateNormal];
    [buttonJump setBackgroundColor:[UIColor redColor]];
    /*[button addTarget:self action:@selector(showHello) forControlEvents:UIControlEventTouchUpInside];*/
    [self.view addSubview:buttonJump];
    _buttonJump = buttonJump;
    [_buttonJump addTarget:self action:@selector(buttonJump:) forControlEvents:UIControlEventTouchUpInside];
    
    UILabel *lFirstName = [[UILabel alloc]initWithFrame:CGRectMake(20, 70, 100, 50)];
    UILabel *lLastName = [[UILabel alloc]initWithFrame:CGRectMake(20, 120, 100, 50)];
    _lLastName = lLastName;
    _lFirstName = lFirstName;
    [lFirstName setText:@"firstName"];
    [lLastName setText:@"lastName"];
    [lFirstName setTextColor:[UIColor blackColor]];
    [lLastName setTextColor:[UIColor blackColor]];
    [self.view addSubview:lFirstName];
    [self.view addSubview:lLastName];
    
    UITextField *tfFirstName = [[UITextField alloc]initWithFrame:CGRectMake(100, 80, 200, 30)];
    UITextField *tfLastName = [[UITextField alloc]initWithFrame:CGRectMake(100, 130, 200, 30)];
    [tfFirstName setBorderStyle:UITextBorderStyleRoundedRect];
    [tfLastName setBorderStyle:UITextBorderStyleRoundedRect];
    [tfFirstName setBackgroundColor:[UIColor whiteColor]];
    [tfLastName setBackgroundColor:[UIColor whiteColor]];
    tfFirstName.keyboardAppearance = UIKeyboardAppearanceDark;
    tfLastName.keyboardAppearance = UIKeyboardAppearanceLight;
    [self.view addSubview:tfFirstName];
    [self.view addSubview:tfLastName];
    _firstName = tfFirstName;
    _lastName = tfLastName;
    
    _myLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 300, 300, 50)];
    
    [button release];
    [buttonJump release];
    [lLastName release];
    [lFirstName release];
    [tfFirstName release];
    [tfLastName release];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*-(void)showHello{
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Hello" message:[NSString stringWithFormat:@"%@ %@", self.firstName.text, self.lastName.text] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alertView show];
    NSString *str = [NSString stringWithFormat:@"%@ %@", tfFirstName, tfLastName ];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Hello" message:str preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertViewStyleDefault handler:(^UIAlertAction *action){
     
    }];
}*/

-(IBAction)buttonHello:(id)sender{
    [_myLabel setText:[NSString stringWithFormat:@"Hello %@ %@! Nice to see you!",self.firstName.text, self.lastName.text]];
    [_myLabel setTextColor:[UIColor blueColor]];
    [self.view addSubview:_myLabel];
}

-(IBAction)buttonJump:(id)sender{
    SecondViewController *sc = [[SecondViewController alloc]init];
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Hello" message:[NSString stringWithFormat:@"%@ %@", self.firstName.text, self.lastName.text] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alertView show];
    [self.navigationController pushViewController:sc animated:YES];
    [alertView release];
    [sc release];
}

-(void)dealloc{
    [_lFirstName release];
    [_lLastName release];
    [_firstName release];
    [_lastName release];
    [_buttonHelloName release];
    [_buttonJump release];
    [_myLabel release];
    [super dealloc];
}

@end
