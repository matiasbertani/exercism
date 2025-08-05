if [[ ! -v 1 || -v 2 ]]; then 
    echo "Usage: error_handling.sh <person>"
    exit 1
fi
echo "Hello, $1" 
