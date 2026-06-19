namespace ThangNTApp.ThangNTApp;

using Microsoft.Projects.Project.Job;

pageextension 60100 "Job Task Lines Sub. Ext" extends "Job Task Lines Subform"
{
    layout
    {
        addafter("Job Task Type")
        {
            field("Project Task Subtype"; Rec."Project Task Subtype")
            {
                ApplicationArea = All;
            }
            field("Actual Start Date"; Rec."Actual Start Date")
            {
                ApplicationArea = All;
            }
            field("Actual End Date"; Rec."Actual End Date")
            {
                ApplicationArea = All;
            }

            field("status"; Rec.Status)
            {
                ApplicationArea = All;
            }
        }
    }
}
