// I try to cover all best coding rules in this program

class BestCoding
{
  public void namingConventions()
  {
     String firstName="Sayan";  // Self Describing Variable
     String lastName="Pal" ;
     System.out.println("My Name is : "+firstName+" "+lastName);
  }
  public void getGrade(int marks)
  {
    String grade="";
    //Avoid Deep Nesting
    if(marks>=90 && marks <=100)
    {
      grade="AA";
    }
    else if(marks>=80 && marks<=89)
    {
      grade="A+";
    }
    else if(marks>=60 && marks<=79)
    {
      grade="A";
    }
    else if(marks>=50 && marks<=59)
    {
     grade="B";
    }
    else if(marks>=40 && marks<=49)
    {
     grade="C";
    }
    else if(marks<40)
    {
     grade="D";
     System.out.println("You are Fail");
    }
    else if(marks<0 && marks>100)
    {
     System.out.println("Invalid Marks");
    }
    System.out.println("Your Grade is : "+grade);

  }
  public void getWeekDay(int day)
  {
     System.out.println("What is the name of the Day ?");
     String dayName="";
     switch(day)
     {
        case 1:
               dayName="MONDAY";
               break;
        case 2:
               dayName="TUESDAY";
               break;
        case 3:
               dayName="WEDNESDAY";
               break;
        case 4:
               dayName="THURSDAY";
               break;
        case 5:
               dayName="FRIDAY";
               break;
        case 6:
               dayName="SATAURDAY";
               break;
        case 7:
               dayName="SUNDAY";
               break;
        default:
                dayName="INVALID";
                break;
     }//Structure of Code
     System.out.println(dayName);
  }
}
class Day17_BestCoding
{
  public static void main(String[] args)
  {
     BestCoding ob = new BestCoding();
     ob.namingConventions();
     ob.getGrade(39);
     ob.getWeekDay(6);//Follow DRY Principle
  }
}
