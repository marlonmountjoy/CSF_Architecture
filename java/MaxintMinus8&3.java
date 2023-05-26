public class MaxintMinus8and3 
{
    public static void main(String[] args) 
    {
        int a = -8;
        int b = 3;
        int max = max(a, b);
        System.out.println("The maximum value is: " + max);
    }

    public static int max(int a, int b) 
    {
        if(a > b) 
        {
            return a;
        } 
        else 
        {
            return b;
        }
    }
}
