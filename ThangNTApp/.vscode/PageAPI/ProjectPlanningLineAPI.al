namespace DefaultPublisher.ThangNTApp;

using Microsoft.Projects.Project.Job;
using Microsoft.Projects.Project.Planning;

page 60105 "Project Planning Line API"
{
    PageType = API;
    Caption = 'Project Planning Line API';
    APIPublisher = 'thangnt';
    APIGroup = 'app';
    APIVersion = 'v1.0';
    EntityName = 'projectPlanningLine';
    EntitySetName = 'projectPlanningLines';
    SourceTable = "Job Planning Line";
    DelayedInsert = true;
    ODataKeyFields = SystemId;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(SystemId; Rec.SystemId)
                {
                    ApplicationArea = All;
                }
                field(JobTaskNo; Rec."Job Task No.")
                {
                    ApplicationArea = All;
                }
                field(LineNo; Rec."Line No.")
                {
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field(No; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        Rec.SetRange("Type", Rec.Type::Resource);
    end;

    trigger OnAfterGetRecord()

    begin


    end;
}
