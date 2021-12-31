FROM hashicorp/packer:1.7.2

LABEL "com.github.actions.name" = "Packer build"
LABEL "com.github.actions.description" = "Run packer build on a template file"
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="blue"

LABEL "repository" = "https://github.com/diegoaceneves/packer-build-action"
LABEL "homepage" = "https://github.com/diegoaceneves/packer-build-action"
LABEL "maintainer" = "Diego Neves <diego@diegoneves.eti.br>"

RUN apk -u add ansible
RUN apk -u add docker

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
