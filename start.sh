API_ENDPOINT="$1:5050"
echo "Running with endpoint ${API_ENDPOINT}"
docker run -d --name "api" -p "5050:5050" colorful-api:latest
docker run -d --name "web" -p "8080:3000" -e REACT_APP_API=$API_ENDPOINT colorful:latest
