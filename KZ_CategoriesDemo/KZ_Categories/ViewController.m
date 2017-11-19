//
//  ViewController.m
//  KZ_Categories
//
//  Created by Kieron Zhang on 2016/12/24.
//  Copyright © 2016年 Kieron Zhang. All rights reserved.
//

#import "ViewController.h"
#import <KZ_CategoriesFramework/NSString+KZ_AES.h>
#import <KZ_CategoriesFramework/NSString+KZ_DES.h>
#import <KZ_CategoriesFramework/UIDevice+KZ_Additions.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *string = @"iOS Developer Tips encoded in Base64";
    NSString *aesString = [string kz_encodeAESStringWithKey:@"aasdfadfadfdsf"];
    NSString *aesString1 = [aesString kz_decodeAESStringWithKey:@"aasdfadfadfdsf"];
    NSLog(@"\n%@  \n%@", aesString, aesString1);
    
    NSString *desString = [string kz_encodeDESStringWithKey:@"aasdfadfadfdsf"];
    NSString *desString1 = [desString kz_decodeDESStringWithKey:@"aasdfadfadfdsf"];
    NSLog(@"\n%@  \n%@", desString, desString1);
    
    NSLog(@"%@", [UIDevice kz_platform]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
