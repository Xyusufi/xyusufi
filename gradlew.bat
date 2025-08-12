@echo off
REM ------------------------------------------------------------------------------
REM Gradle start up script for Windows
REM ------------------------------------------------------------------------------

setlocal

set DIRNAME=%~dp0
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%

set DEFAULT_JVM_OPTS=
set JVM_OPTS=%DEFAULT_JVM_OPTS%

set GRADLE_OPTS=

set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar

if not defined JAVA_HOME goto findJavaFromPath

set JAVA_EXE=%JAVA_HOME%\bin\java.exe
if exist "%JAVA_EXE%" goto init

echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
goto fail

:findJavaFromPath
set JAVA_EXE=java
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%"=="0" goto init

echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
goto fail

:init
"%JAVA_EXE%" %JVM_OPTS% %GRADLE_OPTS% -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %*
exit /b %ERRORLEVEL%

:fail
echo.
echo ----------------------------------------------------------
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.
echo ----------------------------------------------------------
exit /b 1
