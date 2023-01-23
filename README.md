# Find-My-Sign-Objective-C

**Programming Language:** Objective-c

**Purpose of the Project:** To demonstrate Objective-C programming language by creating the Find Zodiac program.

**Description:** The program will take a user’s birthday input with the format MM/DD/Year all in numbers. Then, it will
find their Zodiac and Chinese Animal Sign. The program also detects user input errors, an example of
this is the handling error in the test cases below.

**How to run the program:** This program runs on Linux with command line gcc and gnustep compiler. Makefile includes all the
related files and builds the program automatically. 

![image](https://user-images.githubusercontent.com/48922526/214121819-7de0e48e-90c4-4216-b6da-60962b010700.png)

User can input their birthday only with number and / format.

![image](https://user-images.githubusercontent.com/48922526/214121983-d8b10bbf-a6dc-455b-a6ab-ad597664b0bb.png)

After the program takes input from users, the result is shown as in the picture below.

![image](https://user-images.githubusercontent.com/48922526/214122165-d1cc7319-6f03-44f9-b5ab-1d88dd8c03f9.png)


### Handling Error
These 10 test cases below show the result of the program with invalid inputs.

**Test case 1:** Input an Invalid date format.

![image](https://user-images.githubusercontent.com/48922526/214123403-cb385980-d43f-445d-ba48-ce9ed14982ae.png)

**Test case 2:** Input a string.

![image](https://user-images.githubusercontent.com/48922526/214123471-97200103-4a3b-4898-8e19-e588cbf56991.png)

**Test case 3:** Input month and date but missing year.

![image](https://user-images.githubusercontent.com/48922526/214123571-6618fc9d-d960-44f6-8efd-7d2b2e5a7fdf.png)

**Test case 4:** Input month with string instead of number.

![image](https://user-images.githubusercontent.com/48922526/214123606-0befe03a-8da6-410b-bc67-6b81f252bbe9.png)

**Test case 5:** Input month > 13

![image](https://user-images.githubusercontent.com/48922526/214123645-06aad346-ed13-4aa8-be10-c2e64b1b84df.png)

**Test case 6:** Input date > 31

![image](https://user-images.githubusercontent.com/48922526/214123718-c138d513-eea4-43af-9f2c-d41f88b7a9f9.png)

**Test case 7:** Input year over current year.

![image](https://user-images.githubusercontent.com/48922526/214123774-59c2bc14-2ed7-43da-872e-8ec047c4f2e4.png)

**Test case 8:** Input date 31 with the month that have thirty days.

![image](https://user-images.githubusercontent.com/48922526/214123825-2e6c1792-4a90-4df5-9751-a40808e0f980.png)

**Test case 9:** Test a leap year

![image](https://user-images.githubusercontent.com/48922526/214123903-5fbd4e7d-bc60-4338-a86f-7fbdc64e013c.png)

**Test case 10:** Input date with February 29 and year which is not a leap year.

![image](https://user-images.githubusercontent.com/48922526/214123947-103d75b0-543e-4949-bc19-bc960c7b2576.png)
