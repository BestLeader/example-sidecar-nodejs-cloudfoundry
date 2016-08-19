# nodeapp
Minimalist NodeJS to demonstrate Sidecar

# APIs available

* `/health.json` - Returns `{"status":"UP"}`, as required by Sidecar for Eureka

* `/hosts/{appName}` - Get the instance info of another app from Eureka via Sidecar