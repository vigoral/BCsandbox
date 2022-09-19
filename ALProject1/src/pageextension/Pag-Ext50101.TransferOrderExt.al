pageextension 50101 "Transfer Order Ext" extends "Transfer Order"
{
    layout
    {
        addlast(content)
        {
            group(Route)
            {
                usercontrol(MapRoute; MapRoute)
                {
                    ApplicationArea = All;

                    trigger ControlAddInReady()
                    begin
                        CurrPage.MapRoute.InitMap();
                    end;

                    trigger Result(Result: Text)
                    var
                        RouteCreatedMsg: Label 'Route created';
                        RouteCreatingErrorMsg: Label 'Something went wrong: %1', Comment = '1 - result';
                    begin
                        if Result = 'OK' then
                            Message(RouteCreatedMsg)
                        else
                            Message(RouteCreatingErrorMsg, Result);
                    end;
                }
            }
        }
    }
    actions
    {
        addlast("F&unctions")
        {
            action(CreateRoute)
            {
                Image = Map;
                Promoted = true;
                PromotedIsBig = true;
                PromotedOnly = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    LocationFrom: Record Location;
                    LocationTo: Record Location;
                begin
                    LocationFrom.Get(Rec."Transfer-from Code");
                    LocationFrom.TestField(Latitude);
                    LocationFrom.TestField(Longitude);
                    LocationTo.Get(Rec."Transfer-to Code");
                    LocationTo.TestField(Latitude);
                    LocationTo.TestField(Longitude);
                    CurrPage.MapRoute.CreateRoute(LocationFrom.Longitude, LocationFrom.Latitude, LocationTo.Longitude, LocationTo.Latitude);
                end;
            }
        }
    }
}
