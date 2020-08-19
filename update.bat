ECHO OFF
REM update.bat
REM Created Wednesday August 19, 2020
REM by Raymond E. Marcil <marcilr@gmail.com>
REM
REM Batch script to update repositories in present working directory.
REM
REM Links
REM =====
REM How to recursively delete directory from command line in windows?
REM https://superuser.com/questions/179660/how-to-recursively-delete-directory-from-command-line-in-windows
REM 

REM =================================== GIT =======================================
REM =================================== GIT =======================================
REM =================================== GIT =======================================

REM Put git.exe in PATH
REM This make execution of git simpler.
REM i.e. No 'Program Files' space to alleviate.
REM
set "PATH=%PATH%;C:\Program Files\Git\bin"

REM Path to development git repositories
set PATHDEV="file:///C:/Users/remarcil/OneDrive - State of Alaska/git-repos/dev"


REM =================================== SVN =======================================
REM =================================== SVN =======================================
REM =================================== SVN =======================================

REM Path to development subversion repositories
set PATHDEV="file:///C:/Users/remarcil/OneDrive - State of Alaska/svn-repos/dev"

REM svn binary directory
set SVNDIR=C:\Program Files\TortoiseSVN\bin
set SVN=svn.exe

REM svn command to use
set "SVNCMD=%SVNDIR%\%SVN%"

echo SVNDIR=%SVNDIR%
echo SVN=%SVN%

REM Build subversion command from path and binary
echo SVNCMD=%SVNCMD%

REM
REM Updated subversion repos in current working directory
REM Surroun script call with 'Program Files" embedded space with "" to
REM alleviate error:
REM
REM 'C:\Program' is not recognized as an internal or external command,
REM  operable program or batch file.'
REM

set SVNCMD="C:\Program Files\TortoiseSVN\bin\svn.exe"
echo SVNCMD=%SVNCMD%

REM
REM Test subversion command
REM This works:
REM
REM %SVNCMD% --help

REM
REM To recursiovely remove directory from command line:
REM   > rmdir <DIR> /s /q
REM

REM
REM ================================ ORACLE ================================
REM
REM %SVNCMD% co "file:///C:/Users/remarcil/OneDrive - State of Alaska/svn-repos/dev/databases/oracle/oracle/trunk" oracle
REM %SVNCMD% co "file:///C:/Users/remarcil/OneDrive - State of Alaska/svn-repos/dev/databases/oracle/create/trunk" create

REM
REM ============================= POWERDESIGNER ============================
REM
REM %SVNCMD% co "file:///C:/Users/remarcil/OneDrive - State of Alaska/svn-repos/dev/ide/powerdesigner/powerdesigner/trunk" powerdesigner


REM
REM ================================ APACHE =================================
REM ================================ APACHE =================================
REM ================================ APACHE =================================
REM
IF EXIST apache (
  ECHO "Updating apache..."
  ECHO "Running: git pull https://github.com/marcilr/apache"
  cd xterm
  git pull https://github.com/marcilr/apache
  cd ..
) ELSE (
  ECHO "Cloning apache..."
  git clone "https://github.com/marcilr/apache" apache
)


