use bytes;
use strict;

use Test::More tests => 1+6;
use Test::NoWarnings;

use Net::IDN::Stupid qw(:all);

is(stupid_to_ascii('m�ller'),'xn--mller-kva');
is(Net::IDN::Stupid::to_ascii('m�ller'),'xn--mller-kva');
is(Net::IDN::Stupid::stupid_to_ascii('m�ller'),'xn--mller-kva');

is(stupid_to_unicode('xn--mller-kva'),'m�ller');
is(Net::IDN::Stupid::to_unicode('xn--mller-kva'),'m�ller');
is(Net::IDN::Stupid::stupid_to_unicode('xn--mller-kva'),'m�ller');
