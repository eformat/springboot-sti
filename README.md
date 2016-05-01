# springboot-sti

    oc new-project springboot-sti --display-name="SpringBoot STI" --description="SpringBoot STI"

    oc create -f https://raw.githubusercontent.com/eformat/springboot-sti/master/all-in-v3.json

Proxy: need to set
http_proxy, https_proxy in BuildConfig
set ENV vars in Dockerfile - for yum
todo: add these as parameters to build as env vars

    oc start-build springboot-sti


# Examples using the springboot-sti and templates

(1)  springboot-helloworld-maven - hello world

(2)  springboot-postgres-helloworld-maven <-> https://github.com/eformat/springbootwebapp
- uses external service + endpoint for postgres


# Sharing springboot-sti using openshift namespace 

Add back in the namespace definitions to sourceStrategy "from" - see all-in-openshift-namespace.json

    "strategy": {
      "type": "Source",
      "sourceStrategy": {
        "from": {
          "kind": "ImageStreamTag",
          "name": "springboot-sti:latest"
          "namespace": "openshift"
        }
      }
    }

As a cluster admin user in openshift namespace, build springboot-sti

    oc login <cluster admin>
    oc project openshift
    oc create -f all-in-openshift-namespace.json

As a normal user create application from it

    oc login <basic user>
    oc new-project springboot
    oc new-app --template=springboot-helloworld-maven
