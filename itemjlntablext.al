tableextension 50144 jle extends "Item Journal Line"
{
    fields
    {
        field(50141; "Packet No."; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50142; "Packet Description"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        // Add changes to table fields here

    }
}