//
//  OrderDetailsViewController.h
//  Returnity
//
//  Created by Dalton on 6/29/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Appearance.h"

@interface OrderDetailsViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *pickupLocationLabel;
@property (weak, nonatomic) IBOutlet UILabel *pickupDeadlineLabel;
@property (weak, nonatomic) IBOutlet UILabel *returnLocationLabel;
@property (weak, nonatomic) IBOutlet UILabel *returnDeadlineLabel;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UILabel *approximateSizeLabel;


@end
