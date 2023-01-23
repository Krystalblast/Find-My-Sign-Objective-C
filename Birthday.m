#import "Birthday.h"

@implementation Birthday

+ (BOOL)isLeapYear:(int)year {
  if (year %4 == 0) {
	if(year % 100 != 0) {
		return YES;
	} else if (year %400 == 0) {
		return YES;
	} else {
		return NO;
	}
   } else {
	
   	return NO;
   }
  return NO;
}

+ (BOOL)isValidYear:(int)inputYear {
   if (inputYear > 1921 && inputYear <= 2021) {
	   return YES;
   }
   return NO;
}

+ (BOOL)isValidDay:(int)day {
	if (day > 0 && day < 32) {
		return YES;
	}
	return NO;
}

+ (BOOL)isValidMonth:(int)month {
	if (month > 0 && month <= 12) {
		return YES;
	} else {
		return NO;
	}
}
+ (BOOL)checkArrayMonth:(int)month andArray:(int [])array andSize:(int)size {

	int i;
	for(i=0; i < size; i++) {
		if(month ==array[i]) {
			return YES;
		}
	}
	return NO;
	
}
+ (BOOL)isValidFromDate:(int)num1 toDate:(int)num2 Input:(int)inputDay {
   if (inputDay > num1 && inputDay <= num2) {
	   return YES;
   }
   return NO;   
}

+ (BOOL)isValidDayOnFeb:(int)day andYear:(int)year {
   
   if ([self isLeapYear:year]) {
	   NSLog(@"It's a leap year!");
	   return [self isValidFromDate:0 toDate:29 Input:day];
   } else {
	   NSLog(@"Not a leap year");
	   return [self isValidFromDate:0 toDate:28 Input:day];
   }
   return NO;

}
+ (BOOL)isValidDay:(int)day withMonth:(int)month {
	int thirtyDaysMonths[4] = {4,6,9,11};
	int thirtyOneDaysMonths[7] = {1,3,5,7,8,10,12};
	if ([self checkArrayMonth:month andArray:thirtyDaysMonths andSize:4] ) {
      		return [self isValidFromDate:0 toDate:30 Input:day];
	} else if  ([self checkArrayMonth:month andArray:thirtyOneDaysMonths andSize:7]) {
	     	return [self isValidFromDate:0 toDate:31 Input:day];
	} else {
		return NO;
	}
}

+ (BOOL)isValidBirthday:(int)day andMonth:(int)month andYear:(int)year {
   BOOL validYear = [self isValidYear:year];
   BOOL validMonth = [self isValidMonth:month];
   BOOL validDay = [self isValidDay:day];
   BOOL validDayMonth = [self isValidDay:day withMonth:month];
   if (!validYear) {
	   NSLog(@"Invalid Year");
	   return NO;
   } else if (!validMonth) {
	   NSLog(@"Invalid Month");
	   return NO;
   } else if (!validDay) {
	   NSLog(@"Invalid Date");
	   return NO;
   } else if (month == 2) {
	   return [self isValidDayOnFeb:day andYear:year];
   } else if (!validDayMonth) {
	   NSLog(@"Invalid Date and month not match with calender");
	   return NO;
   } else { 
	   return YES;
   }
}

+ (BOOL)checkBD:(NSArray *)bdArray {
   NSNumber *month = [bdArray objectAtIndex:0];
   NSNumber *date = [bdArray objectAtIndex:1];
   NSNumber *year = [bdArray objectAtIndex:2];

   return [self isValidBirthday:[date intValue] andMonth:[month intValue] andYear:[year intValue]];
}
@end
