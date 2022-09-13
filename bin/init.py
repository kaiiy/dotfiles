#!/usr/bin/env python3

import subprocess

proc = subprocess.run("type deno2", shell=True,
                      text=True, capture_output=True)
date = proc.stderr.rstrip('\n')

print('STDOUT: {}'.format(date))
