FROM mcr.microsoft.com/dotnet/sdk:3.1
COPY . /app
WORKDIR /app
#RUN ["dotnet", "tool", "install", "--global", "dotnet-ef"]
RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]
RUN dotnet tool install --global dotnet-ef
EXPOSE 80/tcp
RUN chmod +x ./entrypoint.sh
CMD /bin/bash ./entrypoint.sh