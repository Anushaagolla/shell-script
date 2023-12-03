    #!/bin/bash

    for i in {1..10}
    do
        echo "$i"
    done

    #installation of multiple packages

    for i in $@
    do
        yum install $i 
    done