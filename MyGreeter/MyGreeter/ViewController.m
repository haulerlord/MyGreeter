//
//  ViewController.m
//  MyGreeter
//
//  Created by hauler on 2022/8/5.
//

#import "ViewController.h"
#import "MyGreeter.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MyGreeter *greeter = [[MyGreeter alloc] init];
    NSLog(@"打招呼: %@", [greeter greet]);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    MyGreeter *greeter = [[MyGreeter alloc] init];
    NSLog(@"打招呼: %@", [greeter greet]);
}

@end
