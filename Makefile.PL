use 5.010001;
use ExtUtils::MakeMaker;


WriteMakefile(
    NAME => 'Test::Mojo::Session',
    VERSION_FROM => 'lib/Test/Mojo/Session.pm',
    PREREQ_PM => {
        Mojolicious => "3.47"
    },
    ABSTRACT_FROM => 'lib/Test/Mojo/Session.pm',
    AUTHOR => 'Andrey Khozov <avkhozov@googlemail.com>',
    META_MERGE => {
        resources => {
            repository => 'http://github.com/avkhozov/test-mojo-session',
            bugtracker => 'https://github.com/avkhozov/test-mojo-session/issues',
            license => 'http://dev.perl.org/licenses/'
        }
    }
);
