Description:
This Oracle APEX template component plugin facilitates QR code scanning to display contact information such as Name, Cell Number, and Email. The plugin is designed to generate a QR code based on a predefined SQL query and display the retrieved contact details.

Features:
QR Code Generation: Creates QR codes based on the provided contact information.
Contact Information Display: Shows contact details retrieved from the QR code scan.
Customizable Query: Utilizes a specific SQL query structure to fetch contact information.
Usage:
To use this plugin, follow these steps:

Installation: Import the plugin into your Oracle APEX application.
Implementation: Add the plugin to the desired page / Classic Report / Intractive Report within your application.
Configuration: Customize the SQL query to retrieve the contact details based on your requirements.
Integration: Use the generated QR code to display the fetched contact information.
SQL Query Example:
sql
SELECT 'Ahmad' as Name,
       '00923444256748' as Cell,
       'farooq.oracle47@gmail.com' as Email,
       100 as x_size,
       100 as y_size
FROM dual;

The provided example SQL query structure showcases how to retrieve contact details (Name, Cell Number, Email) and define the QR code dimensions (x_size, y_size).

Compatibility:
This plugin is compatible with Oracle APEX versions  23.2.

Support:
For any inquiries, issues, or suggestions, please farooq.oracle47@gmail.com.
