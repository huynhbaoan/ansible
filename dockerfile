#################### Dockerfile for CentOS 6.9 with ssh key added for Ansible, Jenkins######################
# Dockerfile for basic CentOS 6.9, used by Ansible and Jenkins
FROM centos:6.9
RUN echo 'search mydomain.com' | tee /etc/resolv.conf && \
    echo 'nameserver 192.168.x.x' | tee -a '/etc/resolv.conf' && \
    yum update -y && \
#    yum groupinstall "Development Tools" -y && \
    yum install epel-release openssh-server wget -y && \
    wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808/jdk-8u161-linux-x64.rpm" && \
    rpm -Uvh jdk-8u161-linux-x64.rpm && \
    rm -f jdk-8u161-linux-x64.rpm && \
    yum clean all -y && \
    mkdir -p /root/.ssh && chmod 700 /root/.ssh && \
    echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAwDMrCR+XhEztqVz1WJSTo6a+z9nTRuhtZMYL7hFFde40DQ3jquyiW10o7PSrKis31118OS/tqZZ1Zk7+5/yTUjQ6z0+rNrQmUVIIiwCQR4F8u6GF7tyPIhMnA9aB9k15oYycwRxNaUCAUgu7mO/ZJS1/bK1YJcqsxg56DxDyaZ7W+utJ84+sm7GhrFMefPpsmo4SCIKZJmxfwmiX+OP3ram8irC1pvrh9t7kLRe0TuMMalCulRg0MXrL90+tgpadhRrO3s1DonJrLAXkqwY1tH/mPqL9OfNpzFpyRtro9J1rRR+/K4DUXuJfMNMBqVwwiXCce68c9VP8R91vcDbcew== root@8c8138f698e7' | tee  /root/.ssh/authorized_keys && \
    echo 'service sshd start' | tee -a /etc/bashrc
#ENTRYPOINT ["/bin/bash"]
CMD ["/bin/bash"]
