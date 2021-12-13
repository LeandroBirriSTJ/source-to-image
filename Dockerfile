FROM registry.access.redhat.com/ubi8/nodejs-14
# Add application sources 
ADD . . 
# Install the dependencies
USER 0
RUN  yum install -y bzip2
USER 1001
RUN npm install 
#Build app
RUN npm run build
# Run script uses standard ways to run the application 
CMD npm run -d start
