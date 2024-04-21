#See https://aka.ms/customizecontainer to learn how to customize your debug container and how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/runtime:8.0 AS base
USER app
WORKDIR /app

# Add labels here
LABEL org.opencontainers.image.source=https://github.com/mabubakarriaz/bondchecker
LABEL org.opencontainers.image.description="Pakistan National Prize Bond Checker - A dotnet console app"
LABEL org.opencontainers.image.licenses=Apache

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
# Install clang/zlib1g-dev dependencies for publishing to native
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    clang zlib1g-dev
ARG BUILD_CONFIGURATION=Release
WORKDIR /src
COPY ["BondChecker.csproj", "."]
RUN dotnet restore "./././BondChecker.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "./BondChecker.csproj" -c $BUILD_CONFIGURATION -o /app/build

FROM build AS publish
ARG BUILD_CONFIGURATION=Release
RUN dotnet publish "./BondChecker.csproj" -c $BUILD_CONFIGURATION -o /app/publish /p:UseAppHost=true

FROM mcr.microsoft.com/dotnet/runtime-deps:8.0 AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["./BondChecker"]