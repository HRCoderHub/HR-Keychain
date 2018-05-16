//
//  ViewController.m
//  saveKeychain
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

    
//    UIButton *saveBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
//    [saveBtn setBackgroundColor:[UIColor redColor]];
//    [saveBtn setTitle:@"保存" forState:UIControlStateNormal];
//    [saveBtn addTarget:self action:@selector(saveBtnClick:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:saveBtn];
//
    
    UIButton *getBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    [getBtn setBackgroundColor:[UIColor redColor]];
    [getBtn setTitle:@"读取" forState:UIControlStateNormal];
    [getBtn addTarget:self action:@selector(getBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:getBtn];
    
    UIButton *saveBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 100, 50)];
    [saveBtn setBackgroundColor:[UIColor redColor]];
    [saveBtn setTitle:@"保存" forState:UIControlStateNormal];
    [saveBtn addTarget:self action:@selector(saveBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:saveBtn];
    
    
    UIButton *getBtn2 = [[UIButton alloc] initWithFrame:CGRectMake(100, 400, 100, 50)];
    [getBtn2 setBackgroundColor:[UIColor redColor]];
    [getBtn2 setTitle:@"读取2" forState:UIControlStateNormal];
    [getBtn2 addTarget:self action:@selector(getBtn2Click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:getBtn2];
   
}


- (void)getBtnClick:(UIButton *)buttton{
    /* 初始化一个 KeychainItemWrapper */ //@"E9SVS7VZ2F.keychainGroup"
    KeychainItemWrapper *wrapper = [[KeychainItemWrapper alloc] initWithIdentifier:@"userAccountGroup" accessGroup:@"XXXXXXXXX.keychainGroup"];
    NSString *username = [wrapper objectForKey:(id)kSecAttrAccount];
    NSString *password = [wrapper objectForKey:(id)kSecValueData];
    
    NSLog(@"name:%@",username);
    NSLog(@"password:%@",password);
}


- (void)getBtn2Click:(UIButton *)buttton{
    /* 初始化一个 KeychainItemWrapper */ //@"E9SVS7VZ2F.keychainGroup"
    KeychainItemWrapper *wrapper = [[KeychainItemWrapper alloc] initWithIdentifier:@"userAccountGroup" accessGroup:@"XXXXXXXXX.com.hrhub.saveKeychain"];
    NSString *username = [wrapper objectForKey:(id)kSecAttrAccount];
    NSString *password = [wrapper objectForKey:(id)kSecValueData];
    
    NSLog(@"name:%@",username);
    NSLog(@"password:%@",password);
}


- (void)saveBtnClick:(UIButton *)button{
    /* 初始化一个保存用户帐号的 KeychainItemWrapper */ //@"E9SVS7VZ2F.com.zritc.saveKeychain"
    KeychainItemWrapper *wrapper = [[KeychainItemWrapper alloc] initWithIdentifier:@"userAccountGroup" accessGroup:@"XXXXXXXXX.com.hrhub.saveKeychain"];
    
    //向keychain里存储用户名、密码
    NSString *username = @"com.hrhub.saveKeychain.group";
    NSString *password = @"com.hrhub.saveKeychainWechat5566";
    [wrapper setObject:username forKey:(id)kSecAttrAccount];
    [wrapper setObject:password forKey:(id)kSecValueData];
//    [wrapper setObject:@"AppString" forKey: (__bridge id)kSecAttrService];

    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
