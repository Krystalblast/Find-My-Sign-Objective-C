#import <Foundation/Foundation.h>
#import "Input.h"
#import "Output.h"
#import "Birthday.h"
#import "Zodiac.h"

int main(int argc, const char * argv[]) {
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];    
   [Output printMessage:@"\nEnter Your Birthday M/D/YY: "];
   NSString *userInput = [Input getUserInput];
   NSArray *bdInput = [Input getBirthdayInput:userInput];
   if(![Birthday checkBD:bdInput]) {
      NSLog(@"Error: Invalid input");
      exit(0);
   } else {
      NSString *zodiac = [NSString stringWithFormat:@"\n Your Zodiac Sign is %@", [Zodiac getZodiac:bdInput]];
      NSString *animalSign = [NSString stringWithFormat:@"\n Your Animal Sign is %@\n", [Zodiac getAnimalSign:bdInput]];
      [Output printMessage:zodiac];
      [Output printMessage:animalSign];
   }
   [pool drain];
   return 0;
}
