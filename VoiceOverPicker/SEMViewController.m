//
//  SEMViewController.m
//  VoiceOverPicker
//
//  Created by Steve Moser on 1/19/14.
//  Copyright (c) 2014 Steve Moser. All rights reserved.
//

#import "SEMViewController.h"

@interface SEMViewController () <UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIPickerView *normalPicker;

@end

@implementation SEMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIPickerView *inputViewPicker = [[UIPickerView alloc] init];
    [inputViewPicker setDataSource:self];
    [inputViewPicker setDelegate:self];
    
    [self.textField setInputView:inputViewPicker];
    
    [self.normalPicker setIsAccessibilityElement:YES];
    [self.normalPicker becomeFirstResponder];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 4;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (row == 0) {
        return @"one fish";
    } else if (row == 1) {
        return @"two fish";
    } else if (row == 2) {
        return @"red fish";
    } else if (row == 3) {
        return @"blue fish";
    }
    
    return @"";
}

@end
