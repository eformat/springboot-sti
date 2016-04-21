# springboot-sti

    oc new-project springboot-sti --display-name="SpringBoot STI" --description="SpringBoot STI"

    oc create -f https://raw.githubusercontent.com/eformat/springboot-sti/master/all-in-v3.json

Proxy: need to set
http_proxy, https_proxy in BuildConfig
set ENV vars in Dockerfile - for yum
todo: add these as parameters to build ?

    oc start-build springboot-sti


# Examples using the springboot-sti and templates

(1)  springboot-helloworld-maven - hello world

(2)  springboot-postgres-helloworld-maven <-> https://github.com/eformat/springbootwebapp
- uses external service + endpoint for postgres

