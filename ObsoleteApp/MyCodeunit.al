codeunit 1000000 FOO_MyCodeunit
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"SMTP Mail", 'OnBeforeSend', '', true, true)]
    local procedure MyEventSubscriber()
    begin
        // My business logic.
    end;

    procedure MyProcedure()
    var
        smtpMail: Codeunit "SMTP Mail";
        emailLoginPage: Page "Setup Email Logging";
    begin
        // My business logic.
        emailLoginPage.SkipDeploymentToExchange(true);
    end;
}