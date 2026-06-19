namespace DefaultPublisher.ThangNTApp;

table 60102 "Project Category"
{
    DataClassification = CustomerContent;
    Caption = 'Project Category';
    LookupPageId = "Project Category List";
    DrillDownPageId = "Project Category List";

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; "Description"; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
