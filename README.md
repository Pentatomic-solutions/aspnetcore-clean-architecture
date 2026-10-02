# ASP.NET Core Clean Architecture Microservice Blueprint (.NET 9)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![.NET Core](https://img.shields.io/badge/.NET-9.0-512BD4?logo=dotnet)](https://dotnet.microsoft.com/)
[![Maintained by Pentatomic Solutions](https://img.shields.io/badge/Maintained%20by-Pentatomic%20Solutions-blue)](https://pentatomicsolutions.in/services/dotnet-development-services/)

Production-ready enterprise Web API starter template built with **ASP.NET Core (.NET 9)**, adhering to **Clean Architecture** and **Domain-Driven Design (DDD)** principles. Features MediatR CQRS, Entity Framework Core query optimization, Redis distributed caching, and Docker containerization.

Architected by [Pentatomic Solutions](https://pentatomicsolutions.in) — Enterprise software engineering and .NET modernization consultants.

---

## Architectural Layers

```
                       +-----------------------------------+
                       |         Presentation Layer        |
                       |   ASP.NET Core Web API / Swagger  |
                       +-----------------+-----------------+
                                         |
                                         v
                       +-----------------+-----------------+
                       |         Application Layer         |
                       |  MediatR CQRS, FluentValidation,  |
                       |        DTOs, Service Interfaces   |
                       +-----------------+-----------------+
                                         |
                                         v
                       +-----------------+-----------------+
                       |           Domain Layer            |
                       |   Entities, Value Objects, Logic, |
                       |        Domain Events, Enums       |
                       +-----------------+-----------------+
                                         |
                                         v
                       +-----------------+-----------------+
                       |       Infrastructure Layer        |
                       | EF Core, SQL Server / PostgreSQL, |
                       |   Redis Cache, Identity & JWT     |
                       +-----------------------------------+
```

---

## Key Capabilities

- **High-Throughput Performance**: Optimized EF Core compiled queries, split queries, and Dapper read-replicas sustaining sub-120ms p99 response times.
- **Modern CQRS Pipeline**: MediatR request pipeline with automated request validation, structured telemetry logging, and unhandled exception filters.
- **Enterprise Security**: JWT bearer token validation, OAuth2/OpenID Connect integration, and claims-based multi-tenant authorization guards.
- **Modernization Bridge**: Ready-to-use patterns for wrapping and strangling legacy .NET Framework (4.x) monoliths into cloud-native microservices.
- **Docker & CI/CD**: Production multi-stage Dockerfiles and GitHub Actions workflows for AWS ECS and Azure App Service.

---

## Quickstart

```bash
# Clone repository
git clone https://github.com/pentatomic-solutions/aspnetcore-clean-architecture.git
cd aspnetcore-clean-architecture

# Restore & Run with .NET CLI
dotnet restore
dotnet build
dotnet run --project src/Presentation/Pentatomic.Api
```

---

## Dedicated .NET Engineering & Modernization Services

Need dedicated ASP.NET Core engineering teams or enterprise legacy .NET Framework modernization?
- **Pillar Guide**: [ASP.NET Core Development Services](https://pentatomicsolutions.in/services/dotnet-development-services/)
- **Technical Inquiries**: reachus@pentatomicsolutions.in
- **Direct WhatsApp**: [+91 93168 17687](https://wa.me/919316817687)
