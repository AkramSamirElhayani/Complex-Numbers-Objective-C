//
//  main.m
//  OC_Lab1_3
//
//  Created by Akram Elhayani on 09/01/2022.
//

#import <Cocoa/Cocoa.h>
#import "Complex.h"

int main(int argc, const char * argv[]) {
    
    
    Complex *c1 = [[Complex alloc]init];
    Complex *c2 =[[Complex alloc]init];
    
    printf("Hello OC Lab 1 !\n" );
    
    
    printf( "Please Enter Complex 1 Data  : \n" );
    [Complex GetDataFromUser:c1];
    //  printf("img :%d , real:%d \n ",[c1 getImaginary],[c1 getReal] );//Valid
    //   [c1 Print]; // invalid !!!
    
    
    printf("Please Enter Complex 2 Data  : \n" );
    [Complex GetDataFromUser:c2];
    Complex *cAdd = [c1 Add:c2];
    Complex *cSub = [c2 Substract:c2];
    printf( "Com 1   :" );
    [Complex Print :c1 ];
    printf( "Com 2   : " );
    [Complex Print :c2 ];
    printf( "C1+C2   : " );
    [Complex Print :cAdd ];
    printf("C1-C2   : " );
    [Complex Print :cSub  ];
    
    // printf("img :%d , real:%d \n ",[cAdd getImaginary],[cAdd getReal] ); // Valid
    
    
    return 0;
    
    
}
