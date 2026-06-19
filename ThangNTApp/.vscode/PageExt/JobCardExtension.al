pageextension 60101 "Job Card Extension" extends "Job Card"
{
    layout
    {
        addafter("description")
        {
            FIELD("Project Category Code"; Rec."Project Category Code")
            {
                ApplicationArea = All;
            }
        }
    }
}