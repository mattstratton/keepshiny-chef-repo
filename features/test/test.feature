@test
Feature: test
  In order to automate server provisioning with Opscode Chef
  As a DevOp Engineer
  I want to ensure that test is verb on my servers

  Background:
    * I ssh to "test-app-1" with the following credentials:
      | username | keyfile |
      | $lxc$ | $lxc$ |
