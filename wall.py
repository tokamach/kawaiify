#!/usr/bin/env python

import os
import sys

from AppKit import NSScreen, NSWorkspace
from Foundation import NSURL

ws = NSWorkspace.sharedWorkspace()

#print(file_url)

options = {}

#for screen in NSScreen.screens():

screens = NSScreen.screens()

args = sys.argv
args.pop(0)

for index, wall in enumerate(args):
    file_path = os.path.abspath(wall)

    file_url = NSURL.fileURLWithPath_(file_path)

    (result, error) = ws.setDesktopImageURL_forScreen_options_error_(file_url, screens[index], options, None)
