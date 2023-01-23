#import "Zodiac.h"

@implementation Zodiac

+ (NSString *)findZodiac:(int)month andDate:(int)date {

   switch(month) {
   	case 1:
     		if (date < 20) {
		   return  @"Capricorns";}	
		else {
		   return @"Aquarius";}
		
	case 2:
		if (date < 19) {
		   return @"Aquarius";}
		else {
		   return @"Pisces";}
		
	case 3:
		if (date < 21) {
		   return @"Pisces";}
		else {
		   return @"Aries";}
		
	case 4:
		if (date < 20) {
		   return @"Aries";}
		else {
		   return @"Taurus";}
		
	case 5:
		if (date < 21){
		   return @"Taurus";}
		else {
		   return @"Gemini";}
		
	case 6: 
		if (date < 21){
		   return @"Gemini";}
	   	else{
	     	   return @"Cancer";}
   		
	case 7:
		if (date < 23){
		   return @"Cancer";}
   		else {
     		   return @"Leo";}
   		
	case 8:
		if (date < 23) {
		   return @"Leo";}
		else{
		   return @"Virgo";}
		
	case 9:
		if (date < 23) {
		   return @"Virgo";}
		else {
		   return @"Libra";}
		
	case 10:
		if (date < 23) {
		   return @"Libra";}
		else {
		   return @"Scorpio";}
		
	case 11:
		if (date < 23) {
		   return @"Scorpio";}
		else {
		   return @"Sagittarius";}
		
	case 12: 
		if (date < 22) {
		   return @"Sagittarius";}
		else {
		   return @"Capicorn"; }
		
	default:
		return @"This should not happen";
   }
	return @"Error";
}

+ (NSString *)findAnimalSign:(int)year {
 
   int animalYear = year % 12;
   switch(animalYear){
	case 0:
		return @"Monkey";
		
	case 1: 
		return @"Chicken";
		
	case 2:
		return @"Dog";
		
	case 3:
		return @"Pig";
		
	case 4:
		return @"Rat";
		
	case 5:
		return @"Ox"; 
		
	case 6:
		return @"Tiger";
		
	case 7:
		return @"Rabbit";
		
	case 8:
		return @"Dragon";
		
	case 9:
		return @"Snake";
		
	case 10:
		return @"Horse";
		
	case 11: 
		return @"Goat";
	default: 
		return @"This should not happen";
   }
   return @"Error";
		
}

+ (NSString *)getZodiac:(NSArray *)bdArray {
   int month = [[bdArray objectAtIndex:0] intValue];
   int date = [[bdArray objectAtIndex:1] intValue];
   return [self findZodiac:month andDate:date];
 }

+ (NSString *)getAnimalSign:(NSArray *)bdArray {
   int year = [[bdArray objectAtIndex:2] intValue];
   return [self findAnimalSign:year];
}

@end
