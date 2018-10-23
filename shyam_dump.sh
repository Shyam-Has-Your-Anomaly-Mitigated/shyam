#!/bin/bash
# purpose: informational distraction dump (a*k*a* you ain't gonna read it…ever again)
# usage: shyam_dump.sh textual information '(including cyberspacial addresses)'
# known bugs: curvies, singles, doubles, backticks,..
# known solutions: escaping, quoting∈{singles,doubles},..
# TODO: automate $meta

# automated archival: YYYY-MM-DD.dump sorts archives by date, or grep "dump"
# this way the default groups filetypes by date to observe chronological activity
meta=38 #TODO: update this after modifying me; it's the line number of the CPL
archive='archive';
address="$(dirname "$(readlink -f "$0")")/$archive";
today="$address/`date +%F`.dump";
script="`cat "$0"`";
mkdir -p "$address"
if [ ! -e "$today" ];then
	tail -$((`wc -l "$0"|cut -d' ' -f1`-$meta)) "$0">"$today";
	env head -$meta <<<"$script" >"$0";
fi;

# http://matrix.wikia.com/wiki/Prime_Program
cat>>"$0"<<<"$*";

# satisfying feedback (a*k*a* visual confirmation)
tail "$0";

# esc(ape)
exit;

# https://en.wikipedia.org/wiki/Metaprogramming
# https://en.wikipedia.org/wiki/Self-modifying_code
# https://en.wikipedia.org/wiki/Self-hosting
# https://en.wikipedia.org/wiki/Single-page_application
# https://en.wikipedia.org/wiki/Hex_dump
# https://en.wikipedia.org/wiki/Core_dump
# https://en.wikipedia.org/wiki/Database_dump
# self-hosted database
# https://en.wikipedia.org/wiki/Characters_per_line
############################################################################################################
x
y
z
