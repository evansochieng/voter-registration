# VOTER REGISTRATION APPLICATION

## Introduction
Kenyan citizens have always been frustrated by the long queues during elections. An extreme effect of this is low voter turnouts on election days.

## Project Description
In an attempt to build a voting system, we saw it right to start with a digital registration platform. This project builds a voter registration platform to allow citizens register as voters in preparation for general elections. 

## MVP
- Display total number of voters per polling station in the home page
- Allow for voter registration through filling and submitting form
- Voter can search theie details by ID Number
- Voter can edit details.
- Voter can unregister as a voter by deleting details.
- Display names of registered voters for a polling station when a polling station is clicked.
- Redirects according to which action has been taken.

We defined Sinatra Web API endpoints to handle these operations.

## User Stories
- As a user, I should be able to register as a voter by providing details.    
- As a user, I should be able to search for my details by ID number.    
- As a user, I should be able to edit my details upon searching by ID number.    
- As a user, I should be able to unregister as a voter by deleting my details.   
- As a user, I should be able to see the voters registered in a polling station by clicking on a polling station.    

## Project Guide
When you first open the application, the home page will display the voter count per polling station.    
On the Registration tab, a user will be able to register as a voter by entrering details and clicking register button. The user can then proceed to the Voters tab.    
Voters tab has a list of polling stations which in click should display names of registered voters in that polling station.    
The search box should allow a user to search for details by ID number, then give him/her option to edit or delete details.   

## Collaborators
Evans Ochieng :(Scrum Master)Backend Developer(DB Config, Active Records Migrations)   
George Njogu :Frontend Developer (ReactJS User Interface)   
Charity Nelima :Frontend Developer (UX/UI Designer)   
Leslie Nyatigi :Frontend Developer (UI & UX Designer & API Endpoints - Sinatra)   
