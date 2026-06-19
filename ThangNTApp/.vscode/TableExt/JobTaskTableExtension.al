namespace DefaultPublisher.ThangNTApp;

using Microsoft.Projects.Project.Job;
using Microsoft.Projects.Project.Planning;
using Microsoft.Projects.Project.Ledger;

tableextension 60102 "Job Task Ext." extends "Job Task"
{
    fields
    {
        field(60100; "Project Task Subtype"; Option)
        {
            Caption = 'Project Task Subtype';
            DataClassification = CustomerContent;
            OptionCaption = ' ,Milestone,Deliverable';
            optionMembers = " ",Milestone,Deliverable;
        }
        field(60101; "Actual Start Date"; Date)
        {
            Caption = 'Actual Start Date';
            DataClassification = CustomerContent;
        }
        field(60102; "Actual End Date"; Date)
        {
            Caption = 'Actual End Date';
            DataClassification = CustomerContent;
        }

        field(60104; "Status"; Option)
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
            OptionCaption = ',Open,In Progress,Completed';
            optionMembers = " ",Open,"In Progress",Completed;
        }
    }
}
