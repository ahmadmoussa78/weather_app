# ☀️ Weather App

A Flutter-based weather application that allows users to search for cities and get current weather data.  
The app integrates with a weather API, uses Cubit for state management, and supports dynamic theme colors based on weather conditions.

---

## 📝 Features

- Search for cities to get weather information  
- Display current weather data (temperature, conditions, date)  
- Dynamic theme color based on weather  
- User input handling and validations  
- State management using **Cubit**  
- API integration with proper error handling  
- Exception handling for network and API errors  

---

## 🌐 API Integration

- Fetches weather data from a **Weather API**  
- Uses **Dio** for HTTP requests  
- Handles exceptions, bad responses, and Dio-specific errors  
- Centralized API configuration with base URL and API key  
- Strongly typed **Weather models** for clean data handling  

---

## 🧠 State Management

- Uses **Cubit** for predictable state management  
- Handles **loading, success, and error** states  
- Integration with Flutter widgets for reactive UI  
- Passes data from Cubit to views for display  
- Supports multiple Cubit functions and state updates  

---

## 🎨 Theme & UI

- Dynamic theme color changes based on weather conditions  
- MaterialColor utilities for consistent UI  
- Builder widget to update UI on state changes  
- Clean display of weather data and current date  

---

## 🛠️ Tech Stack

- Flutter  
- Dart  
- Cubit (Bloc) for state management  
- Dio for API requests  
- REST API for weather data  

