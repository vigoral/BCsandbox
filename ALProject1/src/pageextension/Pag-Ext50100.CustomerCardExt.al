pageextension 50100 "CustomerCardExt" extends "Customer Card"
{
    layout
    {
        modify(Name)
        {
            trigger OnAfterValidate()
            begin
                CurrPage.Sounds.OnAfterModifyName();
            end;
        }
        addlast(content)
        {
            usercontrol(Sounds; Sounds)
            {
                ApplicationArea = All;

                trigger ControlAddInReady();
                begin
                    CurrPage.Sounds.OnOpenPage();
                end;
            }
        }
    }
}