class WageCalculate
{
  int max=2;
  int min=0;
  int totalDays=20,totalHours=100;
  int[] wages=new int[totalDays];
  int[] times=new int[totalDays];
  int isFullTime=2,isHalfTime=1,isAbsent=0;
  int range=max-min+1;
  int day=1,hours=0;
  int workHourPerDay;
  int i=0;
  public void calculate()
  {
    System.out.println("Welcome To The Employee Wage Calculation");
    while(day<=totalDays && hours<=totalHours)
    {
        int check=(int)(Math.random()*range)+min ;
        switch(check)
        {
          case 0:
                  workHourPerDay=0;
                  break;
          case 1:
                  workHourPerDay=4;
                  break;
          case 2:
                  workHourPerDay=8;
                  break;
                   
        }
        wages[i]=20*workHourPerDay;
        times[i]=workHourPerDay;
        i++; 
        hours+=workHourPerDay;
        day++;
    }
    System.out.println("Total Hours in month : "+hours); 
    System.out.println("Total Wages in month : "+(20*hours));    
  }
  public void perDayWage()
  {
     System.out.println("Day\tHours\tWage");
     for(i=0;i<wages.length;i++)
     {
       System.out.println((i+1)+"\t"+times[i]+"\t"+wages[i]);
     }
  }
  
}

class EmployeWage
{
  public static void main(String[] args)
  {
    WageCalculate ob = new WageCalculate();
    ob.calculate();
    ob.perDayWage();
    
  }
}
