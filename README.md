# Webgoat.Net

Forked from https://github.com/jerryhoff/WebGoat.NET and changes made to run this as an Azure App Service with 'MySql in App'.

## Azure App Service

- Deploy to Azure App Service from Visual Studio
- When deployed, navigate to your App Service in and enable MySQL In App for this App Service
- Restart your App Service and use Kudu to find D:\Home\datmysql\MYSQLCONNSTR_localdb.txt - the file will contain the port,database name and user credentials for the database
- Navigate to the WebGoat.NET application and initialize the database by setting:
    - Data File Path: D:\home\site\wwwroot\DB_Scripts
    - Client Executable: D:\Program Files (x86)\mysql\5.7.9.0\bin\mysql.exe
    - etc.
