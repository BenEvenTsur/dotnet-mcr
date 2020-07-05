LABEL MATLAB_VERSION R2019b
LABEL DOTNET_VERSION 2.1
FROM mcr.microsoft.com/dotnet/core/sdk:2.1-bionic
RUN apt-get update && \
    apt-get install -y unzip
RUN mkdir /mcr && \
    cd /mcr && \
    wget https://ssd.mathworks.com/supportfiles/downloads/R2019b/Release/5/deployment_files/installer/complete/glnxa64/MATLAB_Runtime_R2019b_Update_5_glnxa64.zip && \
    unzip M*.zip && \
    ./install -mode silent -agreeToLicense yes && \
    rm -rf /mcr
ENV LD_LIBRARY_PATH=/usr/local/MATLAB/MATLAB_Runtime/v97/runtime/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v97/bin/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v97/sys/os/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v97/extern/bin/glnxa64/usr/local/MATLAB/MATLAB_Runtime/v97/runtime/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v97/bin/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v97/sys/os/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v97/extern/bin/glnxa64
