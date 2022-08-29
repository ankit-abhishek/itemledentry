codeunit 50125 salesline
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Codeunit, 80, 'OnPostItemJnlLineOnBeforeIsJobContactLineCheck', '', false, false)]
    local procedure OnPostItemJnlLineOnBeforeIsJobContactLineCheck(SalesLine: Record "Sales Line"; var ItemJnlLine: Record "Item Journal Line")
    var
        ile: Record "Item Ledger Entry";
    begin
        ItemJnlLine."Package No." := ile."Package No.";
        ItemJnlLine."Packet Description" := ile."Packet Description";
    end;


    var
        salesPost: Codeunit "Sales-Post";
        xyz: Record "Item Ledger Entry";
        xzy: Record "Value Entry";
}