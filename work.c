#include <stdio.h>
#include <math.h>
  
int main(void)
{
      int i;
      double result;
  
      for(i = 0; i <= 10; i++)
{
          result = pow(2, i);   // 2의 i승 계산
          printf("2^%d = %.0f\n", i, result);
}
 
      return 0;
}
