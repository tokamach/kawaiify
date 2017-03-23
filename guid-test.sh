#!/bin/bash

for i in `seq 0 3`; do
    NAME=$(/usr/libexec/PlistBuddy -c "print :New\ Bookmarks:$i:Name" ~/.kawaii-five-oh/com.googlecode.iterm2.plist.SPARE)
    if [ $NAME == $1 ] ; then
        echo YES
        GUID=$(/usr/libexec/PlistBuddy -c "print :New\ Bookmarks:$i:Guid" ~/.kawaii-five-oh/com.googlecode.iterm2.plist.SPARE)
        /usr/libexec/PlistBuddy -c "set :Default\ Bookmark\ Guid $GUID" ~/.kawaii-five-oh/com.googlecode.iterm2.plist.SPARE
    fi
done
