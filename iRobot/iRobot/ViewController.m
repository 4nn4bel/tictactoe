//
//  ViewController.m
//  iRobot
//
//  Created by 4nn4bel on 7/3/15.
//  Copyright (c) 2015 4nn4bel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *theFuture;
@property (weak, nonatomic) IBOutlet UILabel *thePast;

@end

@implementation ViewController

@synthesize center, rect;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.center = self.theFuture.center;
    self.rect = self.theFuture.frame;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// for gesture, create view gesture method
-(IBAction)handlePan:(UIPanGestureRecognizer*)sender{
    
    CGPoint point = [sender locationInView:self.view];
    self.theFuture.center = point;
    if(sender.state == UIGestureRecognizerStateEnded){
    
    [UIView animateWithDuration:1.0 animations:^{  // delay of 1 seconds
        self.theFuture.center = self.center;
        self.theFuture.frame = rect;
        
    }];
    }
    

    else
    {
    
    if(CGRectContainsPoint(self.thePast.frame, point))
    {
        self.theFuture.backgroundColor = [UIColor redColor];
        self.theFuture.text = @"Days of the Future, Past, Present";
       [self.theFuture sizeToFit];
    
    
    
    }
    
    
    
    
    
    
    
    
    
    
    }
    
    
    
    }

    

@end
