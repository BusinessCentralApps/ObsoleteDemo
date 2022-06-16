pageextension 1000000 FOO_MyExtension extends "Setup Email Logging"
{
    layout
    {
        modify(Control34)
        {
            Visible = false;
        }
    }
}

pageextension 1000001 FOO_MyExtension2 extends "Email Dialog"
{
    trigger OnClosePage()
    begin
        // My business logic.
    end;
}