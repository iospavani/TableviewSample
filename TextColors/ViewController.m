//
//  ViewController.m
//  TextColors
//
//  Created by Pavani_ios on 3/11/16.
//  Copyright © 2016 Pavani_ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *array;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *labl=[[UILabel alloc]initWithFrame:CGRectMake(10, 50, 300, 60)];
    labl.backgroundColor=[UIColor whiteColor];
    array = @[@"pavani",@"aruna"];
    
    for (int i =1; i <= array.count; i++) {
        NSLog(@"print indexpath %d",i);
    }
    
    UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(100, 200, 50, 30)];
    btn.backgroundColor = [UIColor magentaColor];
    [btn setTitle:@"Click" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
//    NSMutableAttributedString *text =
//    [[NSMutableAttributedString alloc]
//     initWithAttributedString: labl.attributedText];
//    
//    [text addAttribute:NSForegroundColorAttributeName
//                 value:[UIColor redColor]
//                 range:NSMakeRange(10, 1)];
//    [labl setAttributedText: text];
    NSString *myString = @"hai! asman ";
    //Create mutable string from original one
    NSMutableAttributedString *attString = [[NSMutableAttributedString alloc] initWithString:myString];
    
    //Fing range of the string you want to change colour
    //If you need to change colour in more that one place just repeat it
//    NSRange range = [myString rangeOfString:@"hai!"];
//    [attString addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:range];
    NSMutableAttributedString *atrStr = [[NSMutableAttributedString alloc]initWithString:@"\nsoftware" attributes:@{NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Bold" size:21]}];
    [atrStr addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:(NSMakeRange(0, 9))];
    
    NSMutableParagraphStyle *shareStyle = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
    [shareStyle setAlignment:NSTextAlignmentRight];

    [atrStr addAttribute:NSParagraphStyleAttributeName value:shareStyle range:NSMakeRange(0, 9)];

    [attString appendAttributedString:atrStr];
    labl.numberOfLines = 0;
    labl.attributedText = attString;
    
    [self.view addSubview:labl];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
