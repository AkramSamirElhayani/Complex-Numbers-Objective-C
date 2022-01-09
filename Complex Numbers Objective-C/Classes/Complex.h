//
//  Complex.h
//  OC_Lab1_3
//
//  Created by Akram Elhayani on 09/01/2022.
//

#import <Foundation/Foundation.h>
 

@interface Complex : NSObject{
    
    int real;
    int imagenary;

}
// Getters and Setters
-(void) setReal:(int )_real;
-(void)  setImagenary:(int )_imagenary;
-(int) getReal;
-(int) getImaginary;

///

-(Complex*) Add:(Complex*)com;
-(Complex*) Substract:(Complex*)com;

///

+(void)  GetDataFromUser:(Complex*) c;
+(void)  Print:(Complex*)c;

@end
