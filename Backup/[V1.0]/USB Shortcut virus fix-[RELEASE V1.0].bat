@ECHO OFF
TITLE USB Shortcut Virus Fix [RELEASE V1.1]

:NODRIVE
CLS
	CHOICE /C ABCDEFGHIJKLMNOPQRSTUVWXYZ /N /M "Choose the USB drive letter: A, B, C, D:, E, F, G, H, I ...?"
		IF ERRORLEVEL 1 SET DRIVE=A:
		IF ERRORLEVEL 2 SET DRIVE=B:
		IF ERRORLEVEL 3 SET DRIVE=C:
		IF ERRORLEVEL 4 SET DRIVE=D:
		IF ERRORLEVEL 5 SET DRIVE=E:
		IF ERRORLEVEL 6 SET DRIVE=F:
		IF ERRORLEVEL 7 SET DRIVE=G:
		IF ERRORLEVEL 8 SET DRIVE=H:
		IF ERRORLEVEL 9 SET DRIVE=I:
		IF ERRORLEVEL 10 SET DRIVE=J:
		IF ERRORLEVEL 11 SET DRIVE=K:
		IF ERRORLEVEL 12 SET DRIVE=L:
		IF ERRORLEVEL 13 SET DRIVE=M:
		IF ERRORLEVEL 14 SET DRIVE=N:
		IF ERRORLEVEL 15 SET DRIVE=O:
		IF ERRORLEVEL 16 SET DRIVE=P:
		IF ERRORLEVEL 17 SET DRIVE=Q:
		IF ERRORLEVEL 18 SET DRIVE=R:
		IF ERRORLEVEL 19 SET DRIVE=S:
		IF ERRORLEVEL 20 SET DRIVE=T:
		IF ERRORLEVEL 21 SET DRIVE=U:
		IF ERRORLEVEL 22 SET DRIVE=V:
		IF ERRORLEVEL 23 SET DRIVE=W:
		IF ERRORLEVEL 24 SET DRIVE=X:
		IF ERRORLEVEL 25 SET DRIVE=Y:
		IF ERRORLEVEL 26 SET DRIVE=Z:
			CLS
IF EXIST %DRIVE% (
	GOTO DRIVEEXIST
		) ELSE (
			ECHO Drive does not exist, please choose another drive letter.
				PAUSE
					GOTO NODRIVE
)

:DRIVEEXIST
		%DRIVE%
			CLS
ECHO You chose drive %DRIVE%/ close bat file if it is the wrong letter
	PAUSE
		CLS
ECHO All .lnk files going to be deleted
	PAUSE
		CLS
IF EXIST *.lnk (
	DEL *.lnk
		ECHO Shortcut files deleted
			PAUSE
				GOTO LNKDELETED
				) ELSE (
ECHO There is no shortcuts on your USB
	CHOICE /C yn /M "Contunue with the virus scan ?"
		IF ERRORLEVEL 1 SET CONZ=y
		IF ERRORLEVEL 2 SET CONZ=n
						)
		IF %CONZ%==y GOTO LNKDELETED

:EXIT
CLS
	ECHO Applacation will now close
		PAUSE
			GOTO EXIT
			
:LNKDELETED
CLS
	ATTRIB -R -A -S -H /S /D
		ECHO USB shortcut virus now removed
		ECHO Please do a virus scan on this drive now to make sure its removed completly
			PAUSE

:EXIT
ECHO Bat file will close now.
PAUSE
EXIT