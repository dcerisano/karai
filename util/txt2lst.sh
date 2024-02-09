#!/bin/bash
cat $1 | tr '\n' '\233' > $2

