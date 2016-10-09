package WebService::Annict::Works;
use strict;
use warnings;

use URI;
use HTTP::Request::Common;

sub new {
  my ($class, $ua) = @_;

  bless {
    ua => $ua,
  }, $class;
}

sub get {
  my ($self, %args) = @_;
  my $url = URI->new("https://api.annict.com/v1/works");

  $url->query_form(\%args);
  $self->{ua}->get($url->as_string);
}

1;
