FROM rocker/rstudio:4.2.2
# this builds the base image from rstudio

# you can run basic bash commands that will run while setting up the container
RUN echo "Hello"
RUN pwd

# you can install apps and such so that you have them in your image
RUN apt-get install -y git

# you can copy files onto your image/container
COPY renv.lock /home/rstudio/renv.lock
COPY README.md /home/rstudio/README.md 

# we can even install packages into the image
RUN Rscript -e "install.packages('renv', repos = c(CRAN = 'https://cloud.r-project.org'))"
# with the renv package we can keep r packages in our image without having to manually download them each time
# we have to set the working directory first
WORKDIR /home/rstudio
# then we can copy other project files
# COPY renv/ /home/rstudio/renv
COPY bash_script.sh /home/rstudio/bash_script.sh
COPY newRpackage_usage.R /home/rstudio/newRpackage_usage.R 

# however!
# Installing the remotes package allows us to pin the version of the package we're installing
RUN Rscript -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
# now we can install a package like this:
# RUN Rscript -e "remotes::install_version('cowsay', version='1.0.0')"
# this saves us the hassle of having to copy all of our project files
# while still keeping the package versions we want!

RUN echo "Wow! There are so many things you can do with Dockerfiles!"