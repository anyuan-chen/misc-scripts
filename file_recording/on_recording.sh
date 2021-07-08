#! /bin/bash

fswatch -0 -xr /Users/focus/Movies | 
    xargs -0 -n 1 -I {} ./sub_recording.sh {}

