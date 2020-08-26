with Text_IO, Ada.Integer_Text_IO;
use Text_IO, Ada.Integer_Text_IO;


procedure LD3_1 is

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

   task Odd;
   task Even;


   task body Odd is

      i,sum1 :integer;

   begin

      i:=1;
      sum1:=0;

      while i <= N loop
         sum1:=0;

         for j in 1..M loop
            sum1:= sum1+Matr(i,j);
         end loop;

         put_line("Summa " & Positive'Image(i) & "  rindina = " & Positive'Image(sum1));
         i:=i+2;
      end loop;
   end Odd;


   task body Even is
      k, sum2: integer;
   begin

      k:=2;
      sum2:=0;

      while k <= N loop

         sum2:=0;

         for j in 1..M loop

            sum2:= sum2+Matr(k,j);

         end loop;

         put_line("Summa " & Positive'Image(k) & "  rindina = " & Positive'Image(sum2));
         k:=k+2;

      end loop;
   end Even;

begin
   null;
end LD3_1;
