#!/bin/sh
# purpose: self-documented
# usage: shyam_render_pdf.sh 0.pdf 1.pdf 2.pdf 3.pdf … ∞.pdf … श्याम.pdf
# reason: pdf arbitrarily returned "Segmentation fault (core dumped)" on some files ∴ a spof is more reliable
for each in "$@";
do [ "`file -b --mime-type "$each"`" = application/pdf ]&&firefox "$each"&&printf +||printf -&&echo " $each";
done;
# …maybe empty/zero/.. can mean no problems? @shyamscript
# …it used to be +0=0p, -1=1p, -2=2p, -3=3p; where p=problems
# …instead of ∓
