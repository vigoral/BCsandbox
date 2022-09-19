tableextension 50100 "LocationExt" extends Location
{
    fields
    {
        field(50100; Latitude; Decimal)
        {
            Caption = 'Latitude';
            DataClassification = ToBeClassified;
            DecimalPlaces = 2 : 6;
        }
        field(50101; Longitude; Decimal)
        {
            Caption = 'Longitude';
            DataClassification = ToBeClassified;
            DecimalPlaces = 2 : 6;
        }
    }
}
