package Tab::ChangeLog;
use base 'Tab::DBI';
Tab::ChangeLog->table('change_log');
Tab::ChangeLog->columns(Primary => qw/id/);
Tab::ChangeLog->columns(Essential => qw/ip username description person created_at timestamp revoked/);

Tab::ChangeLog->has_a(person   => "Tab::Person");
__PACKAGE__->_register_datetimes( qw/timestamp created_at/);
