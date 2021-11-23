#!/bin/bash

./cybr conjur append-policy -b root -f users.yml
./cybr conjur append-policy -b root -f groups.yml
./cybr conjur append-policy -b root -f grants/grants_user.yml
./cybr conjur append-policy -b cd -f cd/ansible/ansible.yml
./cybr conjur append-policy -b cd/ansible -f cd/ansible/ops-team-1.yml
./cybr conjur append-policy -b cd/ansible -f cd/ansible/ops-team-2.yml
./cybr conjur append-policy -b cd -f cd/kubernetes/kubernetes.yml
./cybr conjur append-policy -b cd/kubernetes -f cd/kubernetes/api-app.yml
./cybr conjur append-policy -b cd/kubernetes -f cd/kubernetes/k8s-secrets-app.yml
./cybr conjur append-policy -b cd/kubernetes -f cd/kubernetes/secretless-app.yml
./cybr conjur append-policy -b cd/kubernetes -f cd/kubernetes/summon-app.yml
./cybr conjur append-policy -b root -f grants/grants_cd.yml
./cybr conjur append-policy -b ci -f ci/jenkins/jenkins.yml
./cybr conjur append-policy -b ci/jenkins -f ci/jenkins/dev-team-1.yml
./cybr conjur append-policy -b ci/jenkins -f ci/jenkins/dev-team-2.yml
./cybr conjur append-policy -b ci/jenkins -f ci/jenkins/projects.yml
./cybr conjur append-policy -b ci -f ci/github/github.yml
./cybr conjur append-policy -b ci/github -f ci/github/actions.yml
./cybr conjur append-policy -b ci -f ci/refactr/refactr.yml
./cybr conjur append-policy -b ci/refactr -f ci/refactr/onboarding.yml
./cybr conjur append-policy -b root -f grants/grants_ci.yml
./cybr conjur append-policy -b cloud -f cloud/aws/aws.yml
./cybr conjur append-policy -b cloud/aws -f cloud/aws/ec2.yml
./cybr conjur append-policy -b cloud/aws -f cloud/aws/lambda.yml
./cybr conjur append-policy -b cloud -f cloud/azure/azure.yml
./cybr conjur append-policy -b cloud/azure -f cloud/azure/function.yml
./cybr conjur append-policy -b cloud/azure -f cloud/azure/devops.yml
./cybr conjur append-policy -b cloud -f cloud/gcp/gcp.yml
./cybr conjur append-policy -b cloud/gcp -f cloud/gcp/compute.yml
./cybr conjur append-policy -b cloud/gcp -f cloud/gcp/function.yml
./cybr conjur append-policy -b cloud -f cloud/thales/thales.yml
./cybr conjur append-policy -b web -f web/conjur-oidc-demo.yml
./cybr conjur append-policy -b root -f authn/authn-azure.yml
./cybr conjur append-policy -b root -f authn/authn-gcp.yml
./cybr conjur append-policy -b root -f authn/authn-iam-prod.yml
./cybr conjur append-policy -b root -f authn/authn-jwt-jenkins.yml
./cybr conjur append-policy -b root -f authn/authn-k8s.yml
./cybr conjur append-policy -b root -f authn/authn-oidc-webapp.yml
./cybr conjur append-policy -b root -f authn/seed-generation.yml
./cybr conjur append-policy -b root -f grants/grants_authn.yml
./cybr conjur append-policy -b root -f grants/grants_vcs.yml
./cybr conjur append-policy -b root -f grants/grants_host.yml