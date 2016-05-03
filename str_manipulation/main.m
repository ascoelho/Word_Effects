//
//  main.m
//  str_manipulation
//
//  Created by Anthony Coelho on 2016-05-02.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char choice[255];
        char string[255];
        int operation;
        
        BOOL loop = YES;

        
        while (loop) {

        NSLog(@"The following operations are available and can be chosen by entering in the operation number\n1 - Uppercase\n2 - Lowercase\n3 - Numberize\n4 - Canadianize\n5 - Respond\n6 - De-Space-It\n");

        
        
        printf("Please type in the operation number: ");
        
        fgets(choice, 255, stdin);
            
            operation = [[NSString stringWithFormat:@"%s", choice] intValue];
            
            if (operation >0 && operation <7){
               
                
                printf("Choose a string to operate on: ");
                fgets(string, 255, stdin);
                NSString *inputString = [NSString stringWithFormat:@"%s",string];
                
                if (operation == 1) {
                    inputString = inputString.uppercaseString;
                    NSLog(@"%@",inputString);
                }
                if (operation == 2) {
                    inputString = inputString.lowercaseString;
                    NSLog(@"%@",inputString);
                }
                if (operation == 3) {
                    int intValue = [[NSString stringWithFormat:@"%s", string] intValue];

                    NSLog(@"%d",intValue);
                }
                if (operation == 4) {
                    inputString = [inputString stringByAppendingString:@", eh?"];
                    NSLog(@"%@",inputString);
                }
                if (operation == 5) {
                    
                    NSString* newString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
                    
                    if([newString hasSuffix:@"?"]){
                        NSLog(@"I don't know");
                        
                    } else if ([newString hasSuffix:@"!"]){
                        NSLog(@"Whoa, calm down!");
                        
                    }
                   
                }
                if (operation == 6) {
                    NSString* newString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    NSLog(@"%@",newString);
                }
                
                
            }
            else {
                NSLog(@"Number must be and integer between 1 and 6");
            }
        



        }
        

        
    }
    return 0;
}
