FROM java:8
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home
ARG arg
 
ADD $arg /home/$arg
ENV filename $arg

CMD    java -jar "/home/$filename"


 



 
