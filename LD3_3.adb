with Text_IO, Ada.Integer_Text_IO;
use Text_IO, Ada.Integer_Text_IO;


procedure LD3_3 is

   type MType is array (Integer range <>, Integer range <>) of Integer;

   N: constant Integer :=10;
   M: constant Integer :=10;

   Matr : MType(1..N, 1..M) := ((others => 1),
                                (others => 2),
                                (others => 3),
                                (others => 4),
                                (others => 5),
                                (others => 6),
                                (others => 7),
                                (others => 8),
                                (others => 9),
                                (others => 10));



   task type Cipari (x,y,z :integer);
   task body Cipari is

      sum1,i :integer;

   begin

      sum1:=0;
      i:= x;
      while i <= N loop
         sum1:=0;

         for j in 1..M loop
            sum1:= sum1+Matr(i,j);
         end loop;

         put_line("Summa " & Positive'Image(i) & "  rindina = " & Positive'Image(sum1));
         i:=i+2;
         delay Duration(y)/Duration(z);
      end loop;
   end Cipari;

   type DynTask is access Cipari;
   D1, D2 : DynTask;

begin

   D1 := new Cipari(5, 1, 2);
   D2 := new Cipari(6, 1, 20);

end LD3_3;
