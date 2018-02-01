//
//  ViewController.m
//  TestProject
//
//  Created by CognizantMcBook on 1/30/18.
//  Copyright © 2018 CognizantMcBook. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//@synthesize  firstName;

// NITIN, Madam, Rotator
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    BOOL isPalindrome = [self checkPalinDrome:@"My gym"];
    if(isPalindrome){
        NSLog(@"Palindrome");
    }else{
        NSLog(@"Not a Palindrome");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)getFirstName{
    return  self.firstName;
}

- (void)setFirstName:(NSString *)firstName{

    self.firstName = firstName;
}



// NITIN 5
-(BOOL)checkPalinDrome:(NSString *)string{
    bool aBool = false;
    NSString *newString= [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    newString = [[newString stringByReplacingOccurrencesOfString:@" " withString:@""] uppercaseString];
    NSLog(@"=== newString =====  %@",newString);
    
    NSInteger count = newString.length;

    for(NSInteger i=0; i< count/2;i++){
        char startChar = [newString characterAtIndex:i] ;
        char endChar = [newString characterAtIndex:count-(i+1)];
        NSLog(@"====   C ====  %c",startChar);
        
        if(startChar == endChar){
            aBool = true;
        }else{
            aBool = false;
        }
        
    }
    return aBool;
}



@end
