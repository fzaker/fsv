use strict;
use warnings;
use Mojolicious::Lite;

my $default_handler = sub {
    my $c = shift;
    my %hash = (
        "apple"  => "red",
        "orange" => "orange",
        "grape"  => "purple",
        "nested" => {
            "one" => "1",
            "two" => "2"
        }
    );
    $c->render(json => \%hash);
};

get '/' => $default_handler;

app->start;