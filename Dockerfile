FROM centos/systemd

# Initial install tools and change password
RUN yum clean all
RUN rpm --rebuilddb
RUN yum -y update
RUN yum -y install make gcc
RUN echo "root" | passwd --stdin root 
