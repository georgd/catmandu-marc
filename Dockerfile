FROM centos:7

LABEL maintainer="Wolfgang Astleitner <wolfgang.astleitner@jku.at>"

ARG CPAN_MIRROR

RUN set -ex \
    && yum makecache -y \
    && yum upgrade -y \
    && yum group install "Development Tools" -y \
    && yum install perl-devel perl-YAML perl-CPAN perl-App-cpanminus -y \
    && yum install openssl-devel tcp_wrappers-devel expat expat-devel libxml2 libxml2-devel libxslt libxslt-devel -y \
    && cpanm --mirror ${CPAN_MIRROR:-http://www.cpan.org} --mirror-only autodie Catmandu Catmandu::MARC Catmandu::Fix::marc_sort\
    && yum clean all \
    && rm -rf /var/cache/yum 

