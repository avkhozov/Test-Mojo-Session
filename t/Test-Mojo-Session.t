use Mojolicious::Lite;
use Test::More;
use Test::Mojo::Session;

get '/set' => sub {
    shift
    ->session(s1 => 'session data')
    ->session(s3 => [1, 3])
    ->render(text => 's1');
} => 'set';

my $t = Test::Mojo::Session->new;
$t->get_ok('/set')
    ->status_is(200)
    ->session_ok
    ->session_has('/s1')
    ->session_is('/s1' => 'session data')
    ->session_hasnt('/s2')
    ->session_is('/s3' => [1, 3], 's3 contains right array')
    ->session_like('/s1' => qr/data/, 's1 contains "data"')
    ->session_unlike('/s1' => qr/foo/, 's1 does not contain "foo"');

done_testing();
