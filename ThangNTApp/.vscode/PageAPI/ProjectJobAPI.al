namespace DefaultPublisher.ThangNTApp;

using Microsoft.Projects.Project.Job;

page 60103 "Project Job API"
{
    PageType = API;
    Caption = 'Project Job API';
    APIPublisher = 'thangnt';
    APIGroup = 'app';
    APIVersion = 'v1.0';
    EntityName = 'project';
    EntitySetName = 'projects';
    SourceTable = Job;
    DelayedInsert = true;
    ODataKeyFields = SystemId;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'Id';
                    Editable = false;
                }
                field(number; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(searchDescription; Rec."Search Description")
                {
                    Caption = 'Search Description';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(description2; Rec."Description 2")
                {
                    Caption = 'Description 2';
                }
                field(projectCategoryCode; Rec."Project Category Code")
                {
                    Caption = 'Project Category Code';
                }
                field(billToCustomerNo; Rec."Bill-to Customer No.")
                {
                    Caption = 'Bill-to Customer No.';
                }
                field(billToName; Rec."Bill-to Name")
                {
                    Caption = 'Bill-to Name';
                }
                field(billToAddress; Rec."Bill-to Address")
                {
                    Caption = 'Bill-to Address';
                }
                field(billToAddress2; Rec."Bill-to Address 2")
                {
                    Caption = 'Bill-to Address 2';
                }
                field(billToCity; Rec."Bill-to City")
                {
                    Caption = 'Bill-to City';
                }
                field(billToCounty; Rec."Bill-to County")
                {
                    Caption = 'Bill-to County';
                }
                field(billToPostCode; Rec."Bill-to Post Code")
                {
                    Caption = 'Bill-to Post Code';
                }
                field(billToCountryRegionCode; Rec."Bill-to Country/Region Code")
                {
                    Caption = 'Bill-to Country/Region Code';
                }
                field(billToName2; Rec."Bill-to Name 2")
                {
                    Caption = 'Bill-to Name 2';
                }
                field(billToContact; Rec."Bill-to Contact")
                {
                    Caption = 'Bill-to Contact';
                }
                field(billToContactNo; Rec."Bill-to Contact No.")
                {
                    Caption = 'Bill-to Contact No.';
                }
                field(shipToCode; Rec."Ship-to Code")
                {
                    Caption = 'Ship-to Code';
                }
                field(shipToName; Rec."Ship-to Name")
                {
                    Caption = 'Ship-to Name';
                }
                field(shipToAddress; Rec."Ship-to Address")
                {
                    Caption = 'Ship-to Address';
                }
                field(shipToAddress2; Rec."Ship-to Address 2")
                {
                    Caption = 'Ship-to Address 2';
                }
                field(shipToCity; Rec."Ship-to City")
                {
                    Caption = 'Ship-to City';
                }
                field(shipToCounty; Rec."Ship-to County")
                {
                    Caption = 'Ship-to County';
                }
                field(shipToPostCode; Rec."Ship-to Post Code")
                {
                    Caption = 'Ship-to Post Code';
                }
                field(shipToCountryRegionCode; Rec."Ship-to Country/Region Code")
                {
                    Caption = 'Ship-to Country/Region Code';
                }
                field(shipToContact; Rec."Ship-to Contact")
                {
                    Caption = 'Ship-to Contact';
                }
                field(jobPostingGroup; Rec."Job Posting Group")
                {
                    Caption = 'Job Posting Group';
                }
                field(wIPMethod; Rec."WIP Method")
                {
                    Caption = 'WIP Method';
                }
                field(currencyCode; Rec."Currency Code")
                {
                    Caption = 'Currency Code';
                }
                field(startingDate; Rec."Starting Date")
                {
                    Caption = 'Starting Date';
                }
                field(endingDate; Rec."Ending Date")
                {
                    Caption = 'Ending Date';
                }
                field(planningStartDate; Rec."Planning Start Date")
                {
                    Caption = 'Planning Start Date';
                    Editable = false;
                }
                field(planningEndDate; Rec."Planning End Date")
                {
                    Caption = 'Planning End Date';
                    Editable = false;
                }
                field(budgetAmount; Rec."Budget Amount")
                {
                    Caption = 'Budget Amount';
                    Editable = false;
                }
                field(actualCost; Rec."Actual Cost")
                {
                    Caption = 'Actual Cost';
                    Editable = false;
                }
                field(billableAmount; Rec."Billable Amount")
                {
                    Caption = 'Billable Amount';
                    Editable = false;
                }
                field(overBudgetAmount; Rec."Over Budget Amount")
                {
                    Caption = 'Over Budget Amount';
                    Editable = false;
                }
                field(budgetvsActualPercent; Rec."BudgetvsActual %")
                {
                    Caption = 'BudgetvsActual %';
                    Editable = false;
                }
                field(status; Rec.Status)
                {
                    Caption = 'Status';
                }
                field(personResponsible; Rec."Person Responsible")
                {
                    Caption = 'Person Responsible';
                }
                field(globalDimension1Code; Rec."Global Dimension 1 Code")
                {
                    Caption = 'Global Dimension 1 Code';
                }
                field(globalDimension2Code; Rec."Global Dimension 2 Code")
                {
                    Caption = 'Global Dimension 2 Code';
                }
                field(blocked; Rec.Blocked)
                {
                    Caption = 'Blocked';
                }
                field(lastDateModified; Rec."Last Date Modified")
                {
                    Caption = 'Last Date Modified';
                }
                field(comment; Rec.Comment)
                {
                    Caption = 'Comment';
                }
                field(customerDiscGroup; Rec."Customer Disc. Group")
                {
                    Caption = 'Customer Disc. Group';
                }
                field(customerPriceGroup; Rec."Customer Price Group")
                {
                    Caption = 'Customer Price Group';
                }
                field(languageCode; Rec."Language Code")
                {
                    Caption = 'Language Code';
                }
                field(scheduledResQty; Rec."Scheduled Res. Qty.")
                {
                    Caption = 'Scheduled Res. Qty';
                    Editable = false;
                }
                field(resourceFilter; Rec."Resource Filter")
                {
                    Caption = 'Resource Filter';
                }
                field(postingDateFilter; Rec."Posting Date Filter")
                {
                    Caption = 'Posting Date Filter';
                }
                field(resourceGrFilter; Rec."Resource Gr. Filter")
                {
                    Caption = 'Resource Gr. Filter';
                }
                field(scheduledResGrQty; Rec."Scheduled Res. Gr. Qty.")
                {
                    Caption = 'Scheduled Res. Gr. Qty';
                    Editable = false;
                }
                field(image; Rec.Image)
                {
                    Caption = 'Image';
                }
                field(externalDocumentNo; Rec."External Document No.")
                {
                    Caption = 'External Document No.';
                }
                field(paymentMethodCode; Rec."Payment Method Code")
                {
                    Caption = 'Payment Method Code';
                }
                field(paymentTermsCode; Rec."Payment Terms Code")
                {
                    Caption = 'Payment Terms Code';
                }
                field(yourReference; Rec."Your Reference")
                {
                    Caption = 'Your Reference';
                }
                field(priceCalculationMethod; Rec."Price Calculation Method")
                {
                    Caption = 'Price Calculation Method';
                }
                field(costCalculationMethod; Rec."Cost Calculation Method")
                {
                    Caption = 'Cost Calculation Method';
                }
                field(invoiceCurrencyCode; Rec."Invoice Currency Code")
                {
                    Caption = 'Invoice Currency Code';
                }
                field(exchangeCalculationMethod; Rec."Exch. Calculation (Cost)")
                {
                    Caption = 'Exchange Calculation (Cost)';
                }
                field(exchangeCalculationPrice; Rec."Exch. Calculation (Price)")
                {
                    Caption = 'Exchange Calculation (Price)';
                }
                field(complete; Rec.Complete)
                {
                    Caption = 'Complete';
                }
                field(sellToCustomerNo; Rec."Sell-to Customer No.")
                {
                    Caption = 'Sell-to Customer No.';
                }
                field(sellToCustomerName; Rec."Sell-to Customer Name")
                {
                    Caption = 'Sell-to Customer Name';
                }
                field(sellToAddress; Rec."Sell-to Address")
                {
                    Caption = 'Sell-to Address';
                }
                field(sellToAddress2; Rec."Sell-to Address 2")
                {
                    Caption = 'Sell-to Address 2';
                }
                field(sellToCity; Rec."Sell-to City")
                {
                    Caption = 'Sell-to City';
                }
                field(sellToContact; Rec."Sell-to Contact")
                {
                    Caption = 'Sell-to Contact';
                }
                field(sellToPostCode; Rec."Sell-to Post Code")
                {
                    Caption = 'Sell-to Post Code';
                }
                field(sellToCounty; Rec."Sell-to County")
                {
                    Caption = 'Sell-to County';
                }
                field(sellToCountryRegionCode; Rec."Sell-to Country/Region Code")
                {
                    Caption = 'Sell-to Country/Region Code';
                }
                field(sellToContactNo; Rec."Sell-to Contact No.")
                {
                    Caption = 'Sell-to Contact No.';
                }
                field(overBudget; Rec."Over Budget")
                {
                    Caption = 'Over Budget';
                    Editable = false;
                }
                field(projectManager; Rec."Project Manager")
                {
                    Caption = 'Project Manager';
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    var
        ActualCostValue: Decimal;
        BudgetAmountValue: Decimal;
    begin
        // Calculate FlowFields
        Rec.CalcFields("Actual Cost", "Budget Amount");

        ActualCostValue := Rec."Actual Cost";
        BudgetAmountValue := Rec."Budget Amount";

        // Calculate Over Budget Amount
        Rec."Over Budget Amount" := ActualCostValue - BudgetAmountValue;

        // Calculate BudgetvsActual %
        if BudgetAmountValue <> 0 then
            Rec."BudgetvsActual %" := (ActualCostValue / BudgetAmountValue) * 100
        else
            Rec."BudgetvsActual %" := 0;
    end;
}
