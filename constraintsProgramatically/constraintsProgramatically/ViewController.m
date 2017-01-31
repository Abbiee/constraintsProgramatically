//
//  ViewController.m
//  constraintsProgramatically
//
//  //  Copyright © 2017 Abbie. All rights reserved.
//



// Checking the device type
#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define IS_RETINA ([[UIScreen mainScreen] scale] >= 2.0)

#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#define SCREEN_MAX_LENGTH (MAX(SCREEN_WIDTH, SCREEN_HEIGHT))
#define SCREEN_MIN_LENGTH (MIN(SCREEN_WIDTH, SCREEN_HEIGHT))
#define IS_ZOOMED (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)

#define IS_IPHONE_4_OR_LESS (IS_IPHONE && SCREEN_MAX_LENGTH < 568.0)
#define IS_IPHONE_5 (IS_IPHONE && SCREEN_MAX_LENGTH == 568.0)
#define IS_IPHONE_6 (IS_IPHONE && SCREEN_MAX_LENGTH == 667.0)
#define IS_IPHONE_6P (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)

#import "ViewController.h"

@interface ViewController ()


@property (strong, nonatomic)  UILabel *sampleLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.sampleLabel = [[UILabel alloc] init];
     self.sampleLabel.backgroundColor = [UIColor redColor];
     self.sampleLabel.textAlignment = NSTextAlignmentCenter;
     self.sampleLabel.textColor = [UIColor whiteColor];
     self.sampleLabel.numberOfLines = 0;
    [self.sampleLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
     self.sampleLabel.text = @"Your Text";
    [self.view addSubview: self.sampleLabel];
    
    [self setConstraints];
}


-(void)setConstraints
{
    
    if (IS_IPHONE_6) {
        /* Leading space to superview */
        NSLayoutConstraint *leftButtonXConstraint = [NSLayoutConstraint
                                                     constraintWithItem:self.sampleLabel attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual toItem:self.view attribute:
                                                     NSLayoutAttributeLeft multiplier:1.0 constant:30];
        /* Top space to superview Y*/
        NSLayoutConstraint *leftButtonYConstraint = [NSLayoutConstraint
                                                     constraintWithItem:self.sampleLabel attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual toItem:self.view attribute:
                                                     NSLayoutAttributeTop multiplier:1.0f constant:200];
        /* Fixed width */
        NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:self.sampleLabel
                                                                           attribute:NSLayoutAttributeWidth
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:nil
                                                                           attribute:NSLayoutAttributeNotAnAttribute
                                                                          multiplier:1.0
                                                                            constant:100];
        /* Fixed Height */
        NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:self.sampleLabel
                                                                            attribute:NSLayoutAttributeHeight
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:nil
                                                                            attribute:NSLayoutAttributeNotAnAttribute
                                                                           multiplier:1.0
                                                                             constant:50];
    
        /* 4. Add the constraints to button's superview*/
        [self.view addConstraints:@[leftButtonXConstraint, leftButtonYConstraint, widthConstraint, heightConstraint]];
    }
    
    else if (IS_IPHONE_5)
    {
        /* Leading space to superview */
        NSLayoutConstraint *leftButtonXConstraint = [NSLayoutConstraint
                                                     constraintWithItem:self.sampleLabel attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual toItem:self.view attribute:
                                                     NSLayoutAttributeLeft multiplier:1.0 constant:30];
        /* Top space to superview Y*/
        NSLayoutConstraint *leftButtonYConstraint = [NSLayoutConstraint
                                                     constraintWithItem:self.sampleLabel attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual toItem:self.view attribute:
                                                     NSLayoutAttributeTop multiplier:1.0f constant:258];
        /* Fixed width */
        NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:self.sampleLabel
                                                                           attribute:NSLayoutAttributeWidth
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:nil
                                                                           attribute:NSLayoutAttributeNotAnAttribute
                                                                          multiplier:1.0
                                                                            constant:35];
        /* Fixed Height */
        NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:self.sampleLabel
                                                                            attribute:NSLayoutAttributeHeight
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:nil
                                                                            attribute:NSLayoutAttributeNotAnAttribute
                                                                           multiplier:1.0
                                                                             constant:12];
        
        /* 4. Add the constraints to button's superview*/
        [self.sampleLabel addConstraints:@[leftButtonXConstraint, leftButtonYConstraint, widthConstraint, heightConstraint]];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
