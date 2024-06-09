FROM quay.io/sampandey001/secktor

RUN git clone https://github.com/wasixd/WASI/root/wasixd

# Clear npm cache and remove node_modules directories
RUN npm cache clean --force
RUN rm -rf /root/wasixd/node_modules

# Install dependencies
WORKDIR /root/wasixd
RUN npm install

# Add additional Steps To Run...
EXPOSE 3000
CMD ["npm","start" ]
