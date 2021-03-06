use Test::More;
use Test::Exception;
use utf8;

use_ok('Ze::View::JSON');

my $engine = Ze::View::JSON->new();

subtest 'json' => sub {
    is( $engine->render( { vars => {hoge => 'hoge' } } ), '{"hoge":"hoge"}');
};

subtest 'ucs' => sub {
    is( $engine->render( { vars => {hoge => 'あ' } } ), '{"hoge":"\u3042"}');
};

subtest 'IE6' => sub {
    is( $engine->render( { vars => {hoge => '<hoge>' } } ), '{"hoge":"\u003choge\u003e"}');
};

subtest 'callback' => sub {
    is( $engine->render( { callback => 'foo' ,vars => {hoge => 'hoge' } } ), 'foo({"hoge":"hoge"})');
};

done_testing();
