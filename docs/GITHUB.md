# Github Actions

The self-hosted runner has been added to the nuc repository using the following installation instructions.
https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/adding-self-hosted-runners

It was installed manually on the machine and can be used by adding the following `runs-on` directive to a job:
```yaml
jobs:
  <job-id>:
    runs-on: self-hosted
    steps:
      - ...
```
It runs as a systemd service, which is easily achieved by using the included `svc.sh` helper script

https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/configuring-the-self-hosted-runner-application-as-a-service

There are a few resources on troubleshooting located here

https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/monitoring-and-troubleshooting-self-hosted-runners