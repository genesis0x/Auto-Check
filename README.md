### C piscine Auto-Check

- script to grade 1337 C Piscine  Projects. May not be 100% accurate, may return false OK, use at your own discretion.

# Usage

1. curl -L https://raw.githubusercontent.com/genesis0x/Auto-Check/main/autocheck.sh  > Auto-Check.sh
2. Run script using ```bash Auto-Check.sh``` or ```./Auto-Check.sh```.
3. Script takes optional argument ```keep``` to keep downloaded test files in ```/$PROJECT/$EXERCISE/```.
4. Follow script prompts.



# EXAMPLE
```
$ ls 
c00/    c03/    c06/    
c01/    c04/    c07/    
c02/    c05/    c08/        Auto-Check.sh
$ bash Auto-Check.sh
Select project to grade:
1) c00    3) c02    5) c04    7) c06     9) c08  
2) c01    4) c03    6) c05    8) c07    
#? 1
You selected c00. Select exercise to grade:
1) ex00   3) ex02   5) ex04   7) ex06   9) ex08
2) ex01   4) ex03   6) ex05   8) ex07
#? 1
You selected ex00.
Downloading test files..

[1/2]: https://raw.githubusercontent.com/genesis0x/Auto-Check/master/c00/ex00/main.c --> c00/ex00/main.c
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   969  100   969    0     0   1818      0 --:--:-- --:--:-- --:--:--  1814

[2/2]: https://raw.githubusercontent.com/genesis0x/Auto-Check/master/c00/ex00/test_output --> c00/ex00/test_output
100     1  100     1    0     0      2      0 --:--:-- --:--:-- --:--:--     2
Grading c00/ex00..
c00/ex00: OK, Norme: OK
```
