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
   begin
      -- Correct way to access array elements within bounds
      A(5) := 25; 
      Ada.Text_IO.Put_Line(Integer'Image(A(5)));
   exception
      when Constraint_Error =>
         Ada.Text_IO.Put_Line("Index out of bounds");
   end;
 exception
   when others =>
      Ada.Text_IO.Put_Line("An unexpected error occurred.");
 end Example;
```