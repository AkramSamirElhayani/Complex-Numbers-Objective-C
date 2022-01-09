//
//  Complex.m
//  OC_Lab1_3
//
//  Created by Akram Elhayani on 09/01/2022.
//

#import "Complex.h"

@implementation Complex


-(void) setReal:(int) _real
{
    real= _real;
}

-(void) setImagenary:(int )_imagenary
{
    imagenary= _imagenary;
}
-(int) getReal
{
    return real;
}


-(int) getImaginary
{
    return imagenary;
}


-(Complex*) Add:(Complex*)com
{
    
    Complex *result  = [[Complex alloc]init];
    result->real = [com getReal] + real;
    result->imagenary = [com getImaginary]+imagenary;
    return result;
}
-(Complex*) Substract:(Complex*)com
{
    
    Complex *result  = [[Complex alloc]init];
    result->real = [com getReal] - real;
    result->imagenary = [com getImaginary]-imagenary;
    return result;
}

+(void)  Print:(Complex*)c
{
    if([c getReal] != 0 )
        printf("%d", [c getReal] );
    
    if([c getImaginary] < 0 )
    {
        if([c getImaginary]!=-1)
            printf("%d",[c getImaginary]);
        else
            printf("%c",'-');
        printf("%c",'i');
    }
    else if ([c getImaginary] > 0 )
    {
        if(c->real != 0 )
            printf("%c",'+');
        if(c->imagenary!=1)
            printf("%d",[c getImaginary]);
        printf("%c",'i');
    }
    
    if([c getImaginary] == 0 && [c getReal]  == 0 )
        printf("%d",0);
    printf("\n");
  //   printf("img :%d , real:%d \n ",[c getImaginary],[c getReal] ); // Valid
}

+(void) GetDataFromUser:(Complex*)c
{
    
    int real ;
    int img ;
   
    printf("Enter Real Number : \n");
    scanf("%d",&real);
    printf("Enter Imagenry  Number : \n" );
    scanf("%d",&img);
    [c setReal:real];
    [c setImagenary:img];
   // printf("img :%d , real:%d \n ",[c getImaginary],[c getReal] ); // Valid
}
/*
 v
 */
@end
