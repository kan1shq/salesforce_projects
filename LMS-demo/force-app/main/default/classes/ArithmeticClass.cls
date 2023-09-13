public with sharing class ArithmeticClass {

    public Integer res { get; set; }

    public Integer num2 { get; set; }

    public Integer num1 { get; set; }

    public PageReference remainder() {
        res = math.mod(num1, num2);
        return null;
    }


    public PageReference division() {
        /*try{
            res = num1 / num2;
        }
        except(Exception e){
            System.debug('You cannot divide a number by zero.');
        }
        return null;*/
        res = num1 / num2;
        return null;
    }


    public PageReference multiplication() {
        res = num1 * num2;
        PageReference pr = new PageReference('https://www.youtube.com/watch?v=dQw4w9WgXcQ');
        return pr;
//        return null;
    }


    public PageReference subtraction() {
        res = num1 - num2;
        return null;
    }


    public PageReference addition() {
        res = num1 + num2;
        return null;
    }

}