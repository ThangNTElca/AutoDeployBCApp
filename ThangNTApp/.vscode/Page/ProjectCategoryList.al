namespace DefaultPublisher.ThangNTApp;

page 60104 "Project Category List"
{
    PageType = List;
    Caption = 'Project Categories';
    SourceTable = "Project Category";
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Code"; Rec.Code)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code of the project category.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the description of the project category.';
                }
            }
        }
    }
}
