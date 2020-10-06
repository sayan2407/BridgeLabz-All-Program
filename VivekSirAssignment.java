import java.util.*;
class VivekSirAssignment
{
  public static void pattern(int row)
  {
     for(int i=row;i>=1;i--)
     {
      for(int j=row-i+1;j<=row;j++)
            System.out.print(j+" ");
      System.out.println();     
     }
  }
  public static int gcd(int num1,int num2)
  {
    if(num2!=0)
       return gcd(num2,num1%num2);
    else
       return num1;
  }
  public static boolean isPrime(int num)
  {
     boolean prime=true;
     for(int i=2;i<=num/2;i++)
     {
         if(num%i==0)
         {
            prime=false;
            break;
         }
     }
     return prime;
  }

  //Main Method
  public static void main(String[] args)
  {
    Scanner ob = new Scanner(System.in);
    boolean b=true;
    while(b)
    {
       System.out.println("Enter 0 to Exit");
       System.out.println("Enter 1 to Pattern");
       System.out.println("Enter 2 to GCD of Two Numbers ");
       System.out.println("Enter 3 to print prime number 2 to n ");
       System.out.println("Enter 4 to print GCD of numbers in Array");
       System.out.println();
       System.out.println("Enter your choice : ");
       int ch=ob.nextInt();
       switch(ch)
       {
           case 0:
                   System.exit(0);
                   break;
           case 1:
                   System.out.println("Enter row : ");
                   int row=ob.nextInt();
                   pattern(row);
                   break;
           case 2:
                   System.out.print("Enter 1st number:");
                   int num1=ob.nextInt();
                   System.out.print("Enter 2nd number:");
                   int num2=ob.nextInt();
                   System.out.println("Gcd Is : "+gcd(num1,num2));
                   break;
           case 3:
                  System.out.println("Enter N : ");
                  int n=ob.nextInt();
                  for(int i=2;i<=n;i++)
                  {
                       if(isPrime(i))
                          System.out.print(i+" ");
                  }
                  System.out.println();
                  break;
           case 4:
                  System.out.println("Enter length of array : ");
                  int l = ob.nextInt();
                  int[] numArray = new int[l];
                  for(int i=0;i<l;i++)
                  {
                     System.out.println("Enter "+(i+1)+" Value : ");
                     numArray[i] = ob.nextInt();
                  }
                  int res = gcd(numArray[0],numArray[1]);
                  for(int i=2;i<l;i++)
                       res=gcd(res,numArray[i]);
                  System.out.println("GCD of "+l+" numbers are : "+res);
                  System.out.println();
                  break;
                  
       }
    }
  }
  
  
}
