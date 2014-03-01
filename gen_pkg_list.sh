#!/usr/bin/env bash
FILE_NAME="packages.md"
PKG_PATH="OpenBSD/5.4/packages/zaurus/"

rake page name="$FILE_NAME"
sed -E -e 's/^description:.*/description: "OpenBSD packages for Zaurus"/' -i "" $FILE_NAME
printf "\n## OpenBSD 5.4\n" >> $FILE_NAME
printf "\n<ul>\n" >> $FILE_NAME
for i in `ls -1 $PKG_PATH`; do printf "<li><a href=\"/$PKG_PATH$i\">$i</a></li>\n" >> $FILE_NAME ;done
printf "</ul>\n" >> $FILE_NAME
