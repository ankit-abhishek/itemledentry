codeunit 50123 purchase
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Codeunit, 90, 'OnPostItemJnlLineOnBeforeInitAmount', '', false, false)]
    local procedure OnPostItemJnlLineOnBeforeInitAmount(var PurchLine: Record "Purchase Line"; var ItemJnlLine: Record "Item Journal Line")
    var
        ile: Record "Item Ledger Entry";
    begin
        ItemJnlLine."Package No." := ile."Package No.";
        ItemJnlLine."Packet Description" := ile."Packet Description";
    end;

    var

}