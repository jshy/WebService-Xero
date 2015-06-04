package Xero::Report;

use Mojo::DOM;
use Moo;
use MooX::ClassAttribute;
use namespace::clean;

#use Xero::Model::Attachment;

with 'Xero::Role::Client';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'Reports' );

sub aged_payables_by_contact {
    my $self = shift;
    my $name = 'AgedPayablesByContact';
}

sub aged_receivables_by_contact {
    my $self = shift;
    my $name = 'AgedReceivablesByContact';
}

sub balance_sheet {
    my $self = shift;
    my $name = 'BalanceSheet';    
}

sub bank_statement {
    my $self = shift;
    my $name = 'BankStatement';    
}

sub bank_summary {
    my $self = shift;
    my $name = 'BankSummary';    
}

sub bas_report {
    my $self = shift;
    # no name the $name attri is the report id so Reports/{id}  for AU orgs only
}

sub budget_summary {
    my $self = shift;
    my $name = 'BudgetSummary';    
}

sub executive_summary {
    my $self = shift;
    my $name = 'ExecutiveSummary';
}

sub profit_and_loss {
    my $self = shift;
    my $name = 'ProfitAndLoss';
}

sub trial_balance {
    my $self = shift;
    my $name = 'TrialBalance';    
}

1;