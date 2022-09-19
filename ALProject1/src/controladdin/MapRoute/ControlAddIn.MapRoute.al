controladdin "MapRoute"
{
    Scripts = 'src\controladdin\js\MapRoute.js';
    RequestedWidth = 600;
    RequestedHeight = 400;
    HorizontalStretch = true;
    VerticalStretch = true;
    procedure InitMap();
    procedure CreateRoute(LongitudeFrom: Decimal; LatitudeFrom: Decimal; LongitudeTo: Decimal; LatitudeTo: Decimal);
    event Result(Result: Text);
    event ControlAddInReady();
}