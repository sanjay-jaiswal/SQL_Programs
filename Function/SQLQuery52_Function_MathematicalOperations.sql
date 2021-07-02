---------Creating function for two numbers addition-----------

CREATE FUNCTION Fun_Addition(@Num1 Decimal(7,2),  
                         @Num2 Decimal(7,2))  
RETURNS Decimal(7,2)  
Begin  
    DECLARE @Result Decimal(7,2)  
    SET @Result = @Num1 + @Num2  
    RETURN @Result  
end  

------------Display addition function-----------
print dbo.Fun_Addition(100,1500)  

----------------Creating function for substraction----------
CREATE FUNCTION Fun_Substraction(@Num1 Decimal(7,2),  
                         @Num2 Decimal(7,2))  
RETURNS Decimal(7,2)  
Begin  
    DECLARE @Result Decimal(7,2)  
    SET @Result = @Num1 - @Num2  
    RETURN @Result  
end  

------------Display addition function-----------
print dbo.Fun_Substraction('Substraction of two numbers is : '+1500,500)  



----------------Creating function for Multiplication----------
CREATE FUNCTION Fun_Multiplication(@Num1 Decimal(7,2),  
                         @Num2 Decimal(7,2))  
RETURNS Decimal(7,2)  
Begin  
    DECLARE @Result Decimal(7,2)  
    SET @Result = @Num1 * @Num2  
    RETURN 'Substraction of two numbers is : '+@Result  
end  

------------Display addition function-----------
print dbo.Fun_Multiplication(5,20)  


alter function Fun_Multiplication()@Num1 Decimal(7,2),@Num2







