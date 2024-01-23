# pentaho_join_table

![Screenshot 2024-01-23 212839](https://github.com/hamdanimuhammad12/pentaho_join_table/assets/75837069/9b8ba1f5-0964-48eb-b6b6-1af40a1f075d)

Installasi Pentaho PDI
----------------------
Download
https://www.hitachivantara.com/en-us/products/pentaho-plus-platform/data-integration-analytics/pentaho-community-edition.html

Pentaho Data Integration (PDI), also known as Kettle, is an open-source data integration and ETL (Extract, Transform, Load) tool. To install Pentaho PDI, you can follow these general steps. Please note that the process may vary slightly depending on your operating system.

Prerequisites:
Java Runtime Environment (JRE):

Ensure that you have Java installed on your system. Pentaho requires Java to run. You can download and install the latest version of Java from the official Oracle website or use an open-source version like OpenJDK.
Download Pentaho Data Integration:

Visit the official Pentaho website or the community website to download the latest version of Pentaho Data Integration (PDI): Pentaho Community Edition.
Installation Steps:
For Windows:
Extract the ZIP Archive:

Extract the downloaded ZIP file to a location on your computer.
Set JAVA_HOME:

Set the JAVA_HOME environment variable to point to the directory where Java is installed.
Run Spoon.bat:

Navigate to the "data-integration" folder within the extracted directory.
Run Spoon.bat to start the PDI graphical design tool.
For Linux:
Extract the TAR Archive:

Extract the downloaded TAR file to a location on your computer.
Set JAVA_HOME:

Set the JAVA_HOME environment variable to point to the directory where Java is installed.
Run Spoon.sh:

Open a terminal and navigate to the "data-integration" folder within the extracted directory.
Run Spoon.sh to start the PDI graphical design tool.
Configuration (Optional):
You may want to configure additional settings based on your requirements. Configuration files are located in the "data-integration" directory.

MySQL Connector
---------------

Check the spoon.sh or spoon.bat script for additional parameters you can configure.

The error message indicates that the MySQL JDBC driver class org.gjt.mm.mysql.Driver could not be found. This driver class is outdated and not commonly used anymore. Instead, you should use the modern MySQL JDBC driver class, which is typically com.mysql.cj.jdbc.Driver.

To resolve this issue, follow these steps:

Download MySQL Connector/J:

Visit the official MySQL website or the Maven Repository to download the latest version of MySQL Connector/J (JDBC driver for MySQL).
Link: MySQL Connector/J or Maven Repository - MySQL Connector/J
Add the JAR File to Your Pentaho PDI Installation:

Once downloaded, locate the JAR file (e.g., mysql-connector-java-x.x.x.jar).
Copy the JAR file to the lib directory within your Pentaho PDI installation directory.
Update Your Transformation or Job Configuration:

Open your transformation or job in Pentaho PDI Spoon.
Locate the step or job entry that connects to the MySQL database.
Edit the connection settings and update the JDBC driver class to com.mysql.cj.jdbc.Driver.
Restart Pentaho PDI:

Restart Pentaho PDI to apply the changes.

