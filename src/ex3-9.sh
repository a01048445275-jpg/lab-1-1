 #!/bin/bash

search_term=$1

if [ -f "DB.txt" ]; then
    grep "$search_term" DB.txt
fi
