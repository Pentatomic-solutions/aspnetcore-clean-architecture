# Multi-stage production build for Pentatomic Clean Architecture Web API
FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /app

# Copy solution and project definitions
COPY Pentatomic.CleanArchitecture.slnx ./
COPY src/Domain/Pentatomic.Domain.csproj src/Domain/
COPY src/Application/Pentatomic.Application.csproj src/Application/
COPY src/Infrastructure/Pentatomic.Infrastructure.csproj src/Infrastructure/
COPY src/Presentation/Pentatomic.Api/Pentatomic.Api.csproj src/Presentation/Pentatomic.Api/

# Restore dependencies
RUN dotnet restore

# Copy source code and build release
COPY src/ src/
RUN dotnet publish src/Presentation/Pentatomic.Api/Pentatomic.Api.csproj -c Release -o /app/publish /p:UseAppHost=false

# Runtime stage
FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS runtime
WORKDIR /app
EXPOSE 8080
ENV ASPNETCORE_URLS=http://+:8080

COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "Pentatomic.Api.dll"]
