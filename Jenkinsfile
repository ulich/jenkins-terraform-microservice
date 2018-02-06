#!/usr/bin/env groovy

library identifier: 'jenkins-lib@master', retriever: modernSCM(github(
        credentialsId: 'github', //<id of the github credentials of jenkins>
        repoOwner: 'ulich',
        repository: 'jenkins-pipeline-library'
))

microservice name: 'coffee-service'
