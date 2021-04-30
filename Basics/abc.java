class main{
    public static void main(String[] args)
    {
        try{
            System.out.print("Hello World");
        }
        catch(Exception e){
            System.out.print("e");
        }
        catch(ArithmeticException e){
            System.out.print("Ae");
        }
        finally{
            System.out.print("!");
        }
    }
}