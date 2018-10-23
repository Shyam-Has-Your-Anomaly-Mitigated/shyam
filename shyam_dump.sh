#!/bin/bash
# purpose: informational distraction dump (a*k*a* you ain't gonna read it…ever again)
# usage: shyam_dump.sh textual information '(including cyberspacial addresses)'
# known bugs: curvies, singles, doubles, backticks,..
# known solutions: escaping, quoting∈{singles,doubles},..

# automated archival: YYYY-MM-DD.dump sorts archives by date, or `ls archive|grep dump`
# this way the default groups filetypes by date to observe chronological activity
archive='archive'; # TODO: update this to change archival directory
filetype='dump'; # TODO: update this to change archival filetype; default="dump"
meta=`grep -n -m1 -E '\#{108}' "$0" | cut -d: -f1`;
address="$(dirname "$(readlink -f "$0")")/$archive";
today="$address/`date +%F`.$filetype";
mkdir -p "$address";
if [ ! -e "$today" ];then
	tail -$((`wc -l "$0"|cut -d' ' -f1`-$meta)) "$0">"$today";
	env head -$meta <<<"`cat "$0"`" >"$0";
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
