@ECHO OFF
ECHO If you want to reset your password please choose (Y) if you do not want to reset your password please choose (N)
ECHO.
	CHOICE /C YN /N /M "[Y,N]"
		IF ERRORLEVEL 1 SET RESET1=Y
		IF ERRORLEVEL 2 SET RESET1=N
IF %RESET1%==N GOTO EXIT
CLS
:NEWPASS
SET /p OLDPASS=Please enter your "OLD" password: 
CLS
:OLDPASS
SET /p NEWPASS=Please enter your "NEW" password: 
CLS
:CORRECT
ECHO Your OLD password is %OLDPASS%, is that correct ?
	CHOICE /C YN /N /M "[Y,N]"
		IF ERRORLEVEL 1 SET correct1=Y
		IF ERRORLEVEL 2 SET correct1=N
			IF %correct1%==N GOTO EXIT
CLS
ECHO Your NEW password is %NEWPASS%, is that correct ?
	CHOICE /C YN /N /M "[Y,N]"
		IF ERRORLEVEL 1 SET correct2=Y
		IF ERRORLEVEL 2 SET correct2=N
			IF %correct2%==N GOTO EXIT
CLS
ECHO Password reset will start now.
PAUSE
CLS
ECHO Changing password.
ECHO #
PING 127.0.0.1 -n 2 -w 120000 >NUL
CLS
ECHO Changing password..
ECHO ##
PING 127.0.0.1 -n 2 -w 120000 >NUL
CLS
:CONT1
ECHO Changing password...
ECHO ###
PING 127.0.0.1 -n 2 -w 120000 >NUL
CLS
ECHO Changing password.
ECHO ####
PING 127.0.0.1 -n 2 -w 120000 >NUL
CLS
ECHO Changing password..
ECHO #####
PING 127.0.0.1 -n 2 -w 120000 >NUL
CLS
ECHO Changing password...
ECHO ######
PING 127.0.0.1 -n 2 -w 120000 >NUL
CLS
ECHO Changing password.
ECHO #######
PING 127.0.0.1 -n 2 -w 120000 >NUL
CLS
ECHO Changing password..
ECHO ########
PING 127.0.0.1 -n 2 -w 120000 >NUL
CLS
:CONT2
ECHO Changing password...
ECHO #########
PING 127.0.0.1 -n 2 -w 120000 >NUL
CLS
ECHO Changing password.
ECHO ##########
PING 127.0.0.1 -n 2 -w 120000 >NUL
CLS
ECHO Changing password..
ECHO ###########
PING 127.0.0.1 -n 2 -w 120000 >NUL
CLS
ECHO Changing password...
ECHO ############
PING 127.0.0.1 -n 2 -w 120000 >NUL
CLS
ECHO Changing password.
ECHO #############
PING 127.0.0.1 -n 2 -w 120000 >NUL
CLS
ECHO Changing password..
ECHO ##############
PING 127.0.0.1 -n 2 -w 120000 >NUL
CLS
ECHO Changing password...
ECHO ###############
PING 127.0.0.1 -n 2 -w 120000 >NUL
CLS
ECHO Changing password.
ECHO ################
PING 127.0.0.1 -n 2 -w 120000 >NUL
CLS
net user %USERNAME% %NEWPASS% %NEWPASS%
ECHO Changing password..
ECHO #################
PING 127.0.0.1 -n 2 -w 120000 >NUL
CLS
ECHO Changing password...
ECHO ##################
PING 127.0.0.1 -n 2 -w 120000 >NUL
CLS
ECHO Password has been changed.
PAUSE

:EXIT
CLS
ECHO You have completed the password reset and it was sucssesfull
PAUSE
CLS
ECHO Bat file will now close.
PAUSE
EXIT