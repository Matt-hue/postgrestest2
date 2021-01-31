FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./
RUN dotnet tool install --global dotnet-ef
ENV PATH=$PATH:/root/.dotnet/tools
ENV ASPNETCORE_URLS=http://+:80  
EXPOSE 80
#RUN dotnet ef migrations add Initial
#RUN dotnet publish -c Release -o out
RUN dotnet build

# Build runtime image
#FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
#WORKDIR /app
#COPY --from=build-env /app/out .
#ENTRYPOINT ["dotnet", "out/postgrestest2.dll"]
ENTRYPOINT [ "dotnet", "run" ]
