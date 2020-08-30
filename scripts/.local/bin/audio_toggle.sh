#!/bin/bash
amixer -D pulse sset Master 1+ toggle && sigdwmblocks 1
