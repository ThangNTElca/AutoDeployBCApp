namespace DefaultPublisher.ThangNTApp;

using Microsoft.Projects.Project.Job;
using Microsoft.Projects.Project.Planning;

page 60106 "Project Task API"
{
    PageType = API;
    Caption = 'Project Task API';
    APIPublisher = 'thangnt';
    APIGroup = 'app';
    APIVersion = 'v1.0';
    EntityName = 'projectTask';
    EntitySetName = 'projectTasks';
    SourceTable = "Job Task";
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
                field(JobNo; Rec."Job No.")
                {
                    ApplicationArea = All;
                }
                field(JobTaskNo; Rec."Job Task No.")
                {
                    ApplicationArea = All;
                }
                field(Parent; Parent)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }

                field(StartDate; StartDateValue)
                {
                    ApplicationArea = All;
                }
                field(EndDate; EndDateValue)
                {
                    ApplicationArea = All;
                }
                field(MilestoneDate; MilestoneDate)
                {
                    ApplicationArea = All;
                }
                field(CompletePercent; CompletePercentValue)
                {
                    ApplicationArea = All;
                }
                field(MainResponsible; MainResponsible)
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field(HighLightStatus; HighLightStatus)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        Rec.SetRange("Job Task Type", Rec."Job Task Type"::"Posting");
        Rec.SetRange("Job no.", 'PR00020');

        if Rec.FindSet() then
            repeat
                if not ((Rec."Project Task Subtype" = Rec."Project Task Subtype"::Milestone) and
                        (Rec.Status = Rec.Status::Open)) then
                    Rec.Mark(true);
            until Rec.Next() = 0;

        Rec.MarkedOnly(true);
    end;

    trigger OnAfterGetRecord()
    var
        JobTaskParent: Record "Job Task";
        JobPlanningLine: Record "Job Planning Line";
    begin
        JobTaskParent.SetRange("Job Task Type", JobTaskParent."Job Task Type"::"Begin-Total");
        JobTaskParent.SetRange("Job No.", Rec."Job No.");
        JobTaskParent.SetRange("Indentation", Rec.Indentation - 1);
        JobTaskParent.SetFilter("Job Task No.", '<%1', Rec."Job Task No.");
        if JobTaskParent.FindLast() then
            Parent := JobTaskParent.Description;

        MilestoneDate := 0D;
        Rec.CalcFields("End Date");
        if Rec."Project Task Subtype" = Rec."Project Task Subtype"::Milestone then
            MilestoneDate := Rec."End Date";

        GetStartEndDate(Rec);
        JobPlanningLine.SetRange("Job No.", Rec."Job No.");
        JobPlanningLine.SetRange("Job Task No.", Rec."Job Task No.");
        JobPlanningLine.SetRange(Type, JobPlanningLine.Type::Resource);
        if JobPlanningLine.FindFirst() then
            MainResponsible := JobPlanningLine."Description";

        HighLightStatus := '';
        Rec.CalcFields("Schedule (Total Cost)", "Usage (Total Cost)", "End Date");
        if Rec."Usage (Total Cost)" >= Rec."Schedule (Total Cost)" then
            HighLightStatus := 'Cost - Warning';
        if HighLightStatus = '' then begin
            HighLightStatus := 'Safe';
        end;
    end;

    local procedure GetStartEndDate(JobTaskRec: Record "Job Task")
    var
        JobTaskChild: Record "Job Task";
        JobTaskTotaling: Record "Job Task";
        TaskPlanningLine: Record "Job Planning Line";
        NumberOfDayPlanning: Decimal;
        NumberOfDayNow: Decimal;
    begin
        StartDateValue := 0D;
        EndDateValue := 0D;
        JobTaskChild.SetRange("Job No.", JobTaskRec."Job No.");
        JobTaskRec.CalcFields("Start Date", "End Date");
        case JobTaskRec.Status of
            JobTaskRec.Status::Open:
                begin
                    CompletePercentValue := 0;
                    Rec.CalcFields("Start Date", "End Date");
                    StartDateValue := Rec."Start Date";
                    EndDateValue := Rec."End Date";
                end;
            JobTaskRec.Status::"In Progress":
                begin
                    Rec.CalcFields("End Date");
                    StartDateValue := Rec."Actual Start Date";
                    EndDateValue := Rec."End Date";
                    NumberOfDayPlanning := CalculateWorkingDays(StartDateValue, EndDateValue) + 1;
                    NumberOfDayNow := CalculateWorkingDays(StartDateValue, WorkDate);
                    CompletePercentValue := Round((NumberOfDayNow / NumberOfDayPlanning) * 100, 1);
                end;
            JobTaskRec.Status::Completed:
                begin
                    CompletePercentValue := 100;
                    StartDateValue := Rec."Actual Start Date";
                    EndDateValue := Rec."Actual End Date";
                end;
        end;
    end;

    local procedure CalculateWorkingDays(StartDate: Date; EndDate: Date): Integer
    var
        CurrentDate: Date;
        WorkingDays: Integer;
    begin
        if (StartDate = 0D) or (EndDate = 0D) or (StartDate > EndDate) then
            exit(0);

        WorkingDays := 0;
        CurrentDate := StartDate;

        while CurrentDate <= EndDate do begin
            if Date2DWY(CurrentDate, 1) < 6 then
                WorkingDays += 1;

            CurrentDate := CalcDate('<1D>', CurrentDate);
        end;

        exit(WorkingDays);
    end;

    var
        StartDateValue: Date;
        EndDateValue: Date;
        CompletePercentValue: Decimal;
        Parent: Text[150];
        MilestoneDate: Date;
        MainResponsible: Text[150];
        HighLightStatus: Text[150];
}
