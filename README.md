# CVE_2020_1938

This project is for vulnerability practice using cve-2020-1938
<br/><br/>
### Description
CVE-2020-1938 is an Apache Tomcat vulnerability called Ghostcat
Tomcat has an HTTP Connector that uses port 8080 and AJP Connector that uses port 8009. Http connector provides http web service and AJP is used for data exchange. Therefore, the ajp connector is activated by default as port 8009. At this time, the attacker can access the files in the server by using the AJP bug.
<br/><br/>
### Development environment
> Tomcat 8.5.50<br/>
> Spring 4.7.1
<br/><br/><br/>
### Install
1. Downlaod the source code
2. Add file.jsp & viewPage.jsp to  apache-tomcat-8.5.50/webapps/ROOT
3. Add cos.jar to apache-tomcat-8.5.50/lib  (http://www.servlets.com/cos/)
4. Create a folder called file in apache-tomcat-8.5.50/webapps/ROOT
5. Go to http://127.0.0.1:8080/file.jsp

![image](https://user-images.githubusercontent.com/43716537/126739215-3e35d87b-00a5-4ca0-adca-e603403e903e.png)

