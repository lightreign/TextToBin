#!/usr/bin/perl

use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new(
    module_name =>  'Text::ConvertBinary',
    license     =>  'perl',
    requires    =>  {
        'local::lib' => 0,
    }
)->create_build_script;