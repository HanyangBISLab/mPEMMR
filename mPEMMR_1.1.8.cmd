@echo off

SET PEMMR_HOME=D:\mPEMMR_Release
SET CLASSPATH=%PEMMR_HOME%\LIB\mPEMMR_1.1.8.jar;%PEMMR_HOME%\msfile_3rd_party\jmzreader-1.2.0.jar;%PEMMR_HOME%\msfile_3rd_party\mzxml-parser-1.3.2.jar;%PEMMR_HOME%\msfile_3rd_party\xxindex-0.11.jar;%PEMMR_HOME%\msfile_3rd_party\com.springsource.org.apache.commons.logging-1.1.1.jar;%PEMMR_HOME%\msfile_3rd_party\com.springsource.org.apache.commons.io-1.4.0.jar;%PEMMR_HOME%\msfile_3rd_party\log4j-1.2.13.jar;%PEMMR_HOME%\msfile_3rd_party\jcommon-1.0.16.jar;%PEMMR_HOME%\log4j\log4j-1.2.15.jar;

set MEM=8G

if ""%1""=="""" goto example

goto exec1


:example
echo Example) mPEMMR_1.1.8 [mPEMMR_Params.txt]
goto end

:exec1
java -Xmx%MEM% pemmr_sa.PEMMRExec %*
goto end

:end
