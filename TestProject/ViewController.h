//
//  ViewController.h
//  TestProject
//
//  Created by CognizantMcBook on 1/30/18.
//  Copyright © 2018 CognizantMcBook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>


@property (nonatomic,copy) NSString *firstName;
-(BOOL)checkPalinDrome:(NSString *)string;

@end

