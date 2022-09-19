pageextension 50102 "Location Card Ext" extends "Location Card"
{
    layout
    {
        addbefore(ShowMap)
        {
            field(Latitude; Latitude)
            {

            }
            field(Longitude; Longitude)
            {

            }
        }
    }
}
