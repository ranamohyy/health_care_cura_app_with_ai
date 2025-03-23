# Cura - Virtual Health Assistant

Cura is a Virtual Health Assistant powered by Generative AI. It helps users manage their medication schedules, receive reminders, and get AI-powered medical assistance through an interactive chatbot. The project is developed for **SalamHack 2025**.

## Project Structure

The Cura project is divided into four main parts:

- **Cura.API** - The backend API built using ASP.NET Core (Runs on port **5164**).
- **Cura.AiModel** - AI model responsible for chatbot responses and medical assistance (Runs on port **8080**).
- **Cura.Flutter** - The mobile application built using Flutter.
- **Cura.UI** - Screenshots and design references for the application.

## Features

- AI-powered chatbot for medical assistance.
- Medication reminders and notifications.
- Secure user authentication and role management.
- Future enhancements: chat saving, appointment booking, and more.

## Demo

https://github.com/user-attachments/assets/93ca4641-6d36-45eb-bdc3-cc6110407d9c

## Screen Shots
<p align="center">
  <img src="https://github.com/user-attachments/assets/08558a97-7b70-46fe-8c3f-749778e98980" alt="Image 1" width="200"/>
  <img src="https://github.com/user-attachments/assets/cdca3ed6-0721-460d-beb2-b05fe4325585" alt="Image 1" width="200"/>
  <img src="https://github.com/user-attachments/assets/21174384-7147-4f67-9d4f-94ee4972830d" alt="Image 1" width="200"/>
</p>
<p align="center">
  <img src="https://github.com/user-attachments/assets/902bf2d1-4352-4f34-95be-df9cd4bc4d5c" alt="Image 1" width="200"/>
  <img src="https://github.com/user-attachments/assets/962dad00-1a28-4ff1-af39-720c13cd1b36" alt="Image 1" width="200"/>
  <img src="https://github.com/user-attachments/assets/7575798c-a3b4-49b6-8731-5c93f0a59360" alt="Image 1" width="200"/>
</p>
<p align="center">
  <img src="https://github.com/user-attachments/assets/a5bd13f7-e711-4315-a6dd-77f1a8368365" alt="Image 1" width="200"/>
  <img src="https://github.com/user-attachments/assets/02d84687-06cd-4273-8523-e85682dafb6b" alt="Image 1" width="200"/>
  <img src="https://github.com/user-attachments/assets/afeb56ce-24fc-4e4b-9b1b-de175acf6499" alt="Image 1" width="200"/>
</p>
<p align="center">
  <img src="https://github.com/user-attachments/assets/a92f1975-d3c7-4b31-a573-2a2281528b04" alt="Image 1" width="200"/>
  <img src="https://github.com/user-attachments/assets/60bafe63-2c38-4fb6-9f8f-572b2fa1787f" alt="Image 1" width="200"/>
  <img src="https://github.com/user-attachments/assets/a5ce83b9-7014-49f5-99f3-73c8b6d5e5c1" alt="Image 1" width="200"/>
</p>
<p align="center">
  <img src="https://github.com/user-attachments/assets/e881636a-9511-4d61-b87d-226de05bd28c" alt="Image 1" width="200"/>
  <img src="https://github.com/user-attachments/assets/8b62d842-1460-40e6-a249-653114e04152" alt="Image 1" width="200"/>
</p>

## Requirements

### API
- .NET 7 or later
- SQL Server
- Entity Framework Core

#### Required NuGet Packages
Before running the API, install the following NuGet packages:
```sh
 dotnet add package AutoMapper.Extensions.Microsoft.DependencyInjection
 dotnet add package Microsoft.AspNetCore.Identity.EntityFrameworkCore
 dotnet add package Microsoft.EntityFrameworkCore
 dotnet add package Microsoft.EntityFrameworkCore.Design
 dotnet add package Swashbuckle.AspNetCore
 dotnet add package Swashbuckle.AspNetCore.Annotations
 dotnet add package Microsoft.EntityFrameworkCore.SqlServer
 dotnet add package Microsoft.EntityFrameworkCore.Proxies
```

### Backend (Cura.API) - Runs on port **5164**

### AI Model (Cura.AiModel) - Runs on port **8080**




