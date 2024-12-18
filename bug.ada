```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (others => 0); -- Initialize array
begin
   for I in A'Range loop
      A(I) := I * 2;
   end loop;
   for I in A'Range loop
      Ada.Text_IO.Put_Line(Integer'Image(A(I)));
   end loop;
   -- Incorrect way to access the array element
   A(11) := 5;
   Ada.Text_IO.Put_Line(Integer'Image(A(11)));
 exception
   when Constraint_Error =>
      Ada.Text_IO.Put_Line("Index out of bounds");
 end Example;
```