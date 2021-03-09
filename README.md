# Webgoat.NET

Forked from https://github.com/jerryhoff/WebGoat.NET with changes to run as an Azure App Service with 'MySql in App'.

## Azure App Service

- Deploy to Azure App Service from Visual Studio
- When deployed, navigate to your App Service in and enable 'MySQL In App' for this App Service (find it under Settings)
- Restart your App Service and use Kudu to find D:\Home\data\mysql\MYSQLCONNSTR_localdb.txt - the file will contain the port,database name and user credentials for the database
- Navigate to the WebGoat.NET application (**Getting Started with WebGoatr.NET**->**Testing Database**) and initialize the database by setting:
    - Data Provider: MySQL
   - ~~Data File Path: D:\home\site\wwwroot\DB_Scripts~~ *Not needed*
    - Client Executable: D:\Program Files (x86)\mysql\5.7.9.0\bin\mysql.exe
    - Server: 127.0.0.1
    - Port, Database, User Name and Password from the txt file found above

## Local

Also works with IIS Express or a local IIS deployment

- Install MySQL 
- Create a user that has full permissions
- Create an empty database
- Navigate to Navigate to the WebGoat.NET application (**Getting Started with WebGoatr.NET**->**Testing Database**) and initialize the database by setting:
    - Data Provider: MySQL
    - Client Executable: Full path to your mysql.exe
    - Server: 127.0.0.1
    - Port, Database, User Name and Password depending on how you first configured your mysql installation
