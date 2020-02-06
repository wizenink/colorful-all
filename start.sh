API_ENDPOINT= "http://davidmaseda.online:5050/gen"
docker run -d -n "api" -p "5050:5050" colorful-api:latest
docker run -d -n "web " -p "8080:3000" -e REACT_APP_API=$API_ENDPOINT colorful:latest
