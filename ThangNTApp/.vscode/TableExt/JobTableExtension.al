namespace DefaultPublisher.ThangNTApp;

using Microsoft.Projects.Project.Job;
using Microsoft.Projects.Project.Planning;
using Microsoft.Projects.Project.Ledger;

tableextension 60101 "Job Extension" extends Job
{
    fields
    {
        field(60101; "Project Category Code"; Code[20])
        {
            Caption = 'Project Category Code';
            DataClassification = CustomerContent;
            TableRelation = "Project Category";
        }
        field(60102; "Planning Start Date"; Date)
        {
            Caption = 'Planning Start Date';
            FieldClass = FlowField;
            CalcFormula = min("Job Planning Line"."Planning Date" where("Job No." = field("No.")));
            Editable = false;
        }
        field(60103; "Planning End Date"; Date)
        {
            Caption = 'Planning End Date';
            FieldClass = FlowField;
            CalcFormula = max("Job Planning Line"."Planning Date" where("Job No." = field("No.")));
            Editable = false;
        }
        field(60104; "Budget Amount"; Decimal)
        {
            Caption = 'Budget Amount';
            FieldClass = FlowField;
            CalcFormula = sum("Job Planning Line"."Total Cost" where("Job No." = field("No."), "Line Type" = filter(Budget | "Both Budget and Billable")));
            Editable = false;
        }
        field(60105; "Actual Cost"; Decimal)
        {
            Caption = 'Actual Cost';
            FieldClass = FlowField;
            CalcFormula = sum("Job Ledger Entry"."Total Cost" where("Job No." = field("No.")));
            Editable = false;
        }
        field(60106; "Billable Amount"; Decimal)
        {
            Caption = 'Billable Amount';
            FieldClass = FlowField;
            CalcFormula = sum("Job Planning Line"."Line Amount" where("Job No." = field("No."), "Line Type" = filter(Billable | "Both Budget and Billable")));
            Editable = false;
        }
        field(60107; "Over Budget Amount"; Decimal)
        {
            Caption = 'Over Budget Amount';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(60108; "BudgetvsActual %"; Decimal)
        {
            Caption = 'BudgetvsActual %';
            DataClassification = CustomerContent;
            Editable = false;
        }
    }
}
