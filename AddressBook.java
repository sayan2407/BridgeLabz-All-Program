import java.util.*;
class Information
{
 // Scanner ob = new Scanner(System.in);
 
  ArrayList<String> name = new ArrayList<String>();
  ArrayList<String>  phone = new ArrayList<String>();
  ArrayList<String> address = new ArrayList<String>();
  ArrayList<String> zip = new ArrayList<String>();
  
  public  void insert(String fname,String mobile,String addres,String pin)
  {
      
      name.add(fname);
      phone.add(mobile);
      address.add(addres);
      zip.add(pin);

      System.out.println("Successfully Added");
  }
  public void display()
  {
    System.out.println("ID\tName\tPhone\tAddress\tZIP_CODE");
    for(int i=0;i<name.size();i++)
    {
       System.out.println(i+"\t"+name.get(i)+"\t"+phone.get(i)+"\t"+address.get(i)+"\t"+zip.get(i));
    }
  }
  public void delete(int del)
  {
      name.remove(del);
      phone.remove(del);
      address.remove(del);
      zip.remove(del);
      System.out.println("Deleted Successfully");
       
  }
/*  public void update(int i,String newPhone)
  {
      if(i>=0 && i<name.size())
      {
        System.out.println("Hii "+name.get(i));
        phone.set(i,newPhone);
        System.out.println(name.get(i)+",Your Moboile number now : "+phone.get(i));
      }
  } */
}

class AddressBook
{
  public static void main(String[] args)
  {
     
     Scanner ob = new Scanner(System.in);
     Information info = new Information();
     System.out.println("WELCOME TO ADDRESS BOOK") ;
     boolean b=true;
    
     while(b)
     {
         System.out.println("-------------------------");
         System.out.println("-------------------------");
         System.out.println();
         System.out.println("Enter 0 to EXIT");
         System.out.println("Enter 1 to Add new person to Address Book");
         System.out.println("Enter 2 to view Address Book");
          System.out.println("Enter 3 to delete");
       
         System.out.println();
         System.out.println("-------------------------");
         System.out.println("-------------------------");
         System.out.println("Enter your choice : ");
         int ch = ob.nextInt();
         switch(ch)
         {
            case 0:
                     System.exit(0);
                     break;
            case 1:
                   
                     System.out.println("Enter your Name : ");
                     String title= ob.nextLine();
                     System.out.println("Enter your phone number : ");
                     String mobile = ob.nextLine();
                     System.out.println("Enter your full Address : ");
                     String addres = ob.nextLine();
                     System.out.println("Enter your zip code : ");
                     String pin = ob.nextLine();
                     info.insert(title,mobile,addres,pin);
                     
                     break;
           
             case 2:
                     info.display();
                     break;
             case 3:
                     System.out.println("Enter id which you want to delete : ");
                     int del=ob.nextInt();
                     info.delete(del);
                     break;
           
         }
         
     }
  }
}
