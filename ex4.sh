#!/bin/bash
df -h | awk '$5+0 > 90 {print $0}'
