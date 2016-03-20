//
//  ViewController.m
//  BillSplitter
//
//  Created by Monica Mollica on 2016-03-20.
//  Copyright © 2016 Sergio Mollica. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textInput;
@property (weak, nonatomic) IBOutlet UISlider *sliderInput;
@property (weak, nonatomic) IBOutlet UILabel *result;

@end

@implementation ViewController

- (void)viewDidLoad {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateButton:(id)sender {
    self.result.text = [[NSString alloc] initWithFormat:@"%.02f", (self.textInput.text.floatValue / self.sliderInput.value)];
}

- (IBAction)sliderAction:(id)sender {
    NSInteger sliderValue;
    sliderValue = lroundf(self.sliderInput.value);
    [self.sliderInput setValue:sliderValue animated:YES];
}

@end
