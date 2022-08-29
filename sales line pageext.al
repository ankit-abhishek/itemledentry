pageextension 50137 Salesline extends "Sales Lines"
{
    Editable = true;
    layout
    {
        // Add changes to page layout here
        addafter(Quantity)
        {
            field("Packet No."; rec."Packet No.")
            {

            }
            field("Packet Description"; rec."Packet Description")
            {

            }
        }
    }
    actions
    {
       addafter("&Line")
       {
        action("Integration Goldiee")
        {
            trigger OnAction()
            var
                Integration:Codeunit Integration;
            begin
                Integration.CreateJSONObject();
            end;
        }
       }
    }
    var
        myInt: Integer;
}
