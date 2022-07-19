with Ada.Text_IO; use Ada.Text_IO;

with AdaID;
with AdaID.Generate;

procedure Main is

   Id : AdaID.UUID;
   Nil : AdaID.UUID;
begin
   AdaID.Generate.Nil(Nil);
   AdaID.Generate.Random (Id);

   Put_Line (AdaID.To_String (Id));

   AdaID.Generate.From_Name(Nil, "Hello", Id);
   Put_Line (AdaID.To_String (Id));
   AdaID.Generate.From_Name(Nil, "Hello", Id);
   Put_Line (AdaID.To_String (Id));
   AdaID.Generate.From_Name(Nil, "Hello2", Id);
   Put_Line (AdaID.To_String (Id));


end Main;
