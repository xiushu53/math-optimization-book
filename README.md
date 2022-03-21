# PYTHONで始める数理最適化 Chapter 6

## Docker Port 0.0.0.0:8088
- flaskのサーバ起動 host, port
- test
    - curl -X POST -F students=@app/resource/students.csv -F cars=@app/resource/cars.csv -o app/resource/solution.csv 0.0.0.0:8088/api

## Private IP 172.18.0.2:8088

## Docker
- docker-compose up --build

## Heroku
- cd app
- heroku login
- git add .
- git commit -m " "
- git push heroku main