while true
do
    temp=$(shuf -i 18-53 -n 1)
    number=$(shuf -i 1-3113 -n 1)

    curl -v -s -S -X POST http://localhost:5050/notify \
    --header 'Content-Type: application/json; charset=utf-8' \
    --header 'Accept: application/json' \
    --header 'User-Agent: orion/0.10.0' \
    --header "Fiware-Service: demo" \
    --header "Fiware-ServicePath: /test" \
    -d  '

    {
        "author_id": "2244994945",
        "text": '$number' " What did the developer write in their Valentine’s card  I = Love(You)",
        "id": "1228393702244134912",
        "created_at": "2020-02-14T19:00:55.000Z",
        "lang":"en"
    }'


   sleep 1
done