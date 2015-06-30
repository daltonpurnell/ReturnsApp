//
//  OrderDetailsViewController.m
//  Returnity
//
//  Created by Dalton on 6/29/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import "OrderDetailsViewController.h"

@interface OrderDetailsViewController ()

@end

@implementation OrderDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.emailTextField.delegate = self;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(BOOL)textFieldShouldReturn:(UITextField*)textfield{
    
    [textfield resignFirstResponder];
    
    return YES;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
