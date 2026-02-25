1) Start Eureka server (port 8761)
2) Start demo (port 8080 first instance) -> register on Eureka server
3) Start demo (port 8081 first instance) -> register on Eureka server
4) Start demo-feign (port 9080) -> register on Eureka server

5) Call Eureka web -> http://localhost:8761

6) Call feign -> http://localhost:9080/api/demo-openfeign/ping
7) #POST
http://localhost:8080/api/countryctrl/insert
{
  "countryName":"Spain",
  "population":"40000"
}

8) #POST
http://localhost:8081/api/countryctrl/insert
{
  "countryName":"Spain",
  "population":"40000"
}


9) Call feign -> http://localhost:9080//api/demo-openfeign/country/findById/1

!!!!!!! NOTE:
demo project uses IN MEMORY database so each service instance starts its own database

 
