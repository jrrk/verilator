#!/usr/bin/perl
if (!$::Driver) { use FindBin; exec("$FindBin::Bin/bootstrap.pl", @ARGV, $0); die; }
# DESCRIPTION: Verilator: Verilog Test driver/expect definition
#
# Copyright 2008 by Wilson Snyder. This program is free software; you can
# redistribute it and/or modify it under the terms of either the GNU
# Lesser General Public License Version 3 or the Perl Artistic License
# Version 2.0.

scenarios(vlt => 1);

compile(
    # It is not possible to put them into the options file
    v_flags2 => ['-Gstring1="\"New String\"" -pvalue+string2="\"New String\"" -f t/t_flag_parameter.vc'],
    );

execute(
    check_finished => 1,
    );

ok(1);
1;
