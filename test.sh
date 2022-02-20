if [[ $# -ne 1 ]]
then 
    echo "invalid program arguments count"; exit 1
fi

query=$1

echo -n $query

timestamp=$(date +%s)

touch ~/Desktop/test_"$timestamp.$query"

code ~/Desktop/test_"$timestamp.$query" &

sleep 2

while pgrep -f "vscode" > /dev/null; do
    sleep 0.5
done

rm -f ~/Desktop/test_"$timestamp.$query"