#!/bin/sh

echo "Running tests"

output="tests/test.out"
./service.sh > $output

match="says: Hello"
    
grep -q -m 1 "$match" $output
if [ $? -eq 0 ] ; then
    echo "*** Service test succeeded! ***"
    exit_code=0
else
    echo "*** Service test failed! ***"
    exit_code=1
fi

exit $exit_code
