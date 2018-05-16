//
//  ViewController.m
//  getKeychain
//
//  Created by 贺晓荣 on 2018/5/15.
//  Copyright © 2018年 贺晓荣. All rights reserved.
//

#import "ViewController.h"

#import "KeychainItemWrapper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
    UIButton *saveBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    [saveBtn setBackgroundColor:[UIColor redColor]];
    [saveBtn setTitle:@"保存" forState:UIControlStateNormal];
    [saveBtn addTarget:self action:@selector(saveBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:saveBtn];
    
    
    UIButton *getBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 100, 50)];
    [getBtn setBackgroundColor:[UIColor greenColor]];
    [getBtn setTitle:@"读取" forState:UIControlStateNormal];
    [getBtn addTarget:self action:@selector(getBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:getBtn];
    
   
    
    
    
    
    
}


- (void)saveBtnClick:(UIButton *)button{
    /* 初始化一个保存用户帐号的 KeychainItemWrapper */
    KeychainItemWrapper *wrapper = [[KeychainItemWrapper alloc] initWithIdentifier:@"userAccount" accessGroup:nil];
    
    //向keychain里存储用户名、密码
    NSString *username = @"hrHub";
    NSString *password = @"123";
    [wrapper setObject:username forKey:(id)kSecAttrAccount];
    [wrapper setObject:password forKey:(id)kSecValueData];
    
    
    
}


- (void)getBtnClick:(UIButton *)button{
    /* 初始化一个 KeychainItemWrapper */
    KeychainItemWrapper *wrapper = [[KeychainItemWrapper alloc] initWithIdentifier:@"userAccountGroup" accessGroup:@"XXXXXXXX.com.hrhub.saveKeychain"];
    NSString *username = [wrapper objectForKey:(id)kSecAttrAccount];
    NSString *password = [wrapper objectForKey:(id)kSecValueData];
    
    NSLog(@"name:%@",username);
    NSLog(@"password:%@",password);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
