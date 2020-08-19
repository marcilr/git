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

REM
REM To recursiovely remove directory from command line:
REM   > rmdir <DIR> /s /q
REM


REM
REM ================================ APACHE =================================
REM ================================ APACHE =================================
REM ================================ APACHE =================================
REM
IF EXIST apache (
  ECHO "Updating apache..."
  ECHO "Running: git pull https://github.com/marcilr/apache"
  cd apache
  git pull https://github.com/marcilr/apache
  cd ..
) ELSE (
  ECHO "Cloning apache..."
  git clone "https://github.com/marcilr/apache" apache
)


REM ================================= ANT ===================================
REM ================================= ANT ===================================
REM ================================= ANT ===================================
REM
IF EXIST ant (
  ECHO "Updating ant..."
  ECHO "Running: git pull https://github.com/marcilr/ant"
  cd apache
  git pull https://github.com/marcilr/ant
  cd ..
) ELSE (
  ECHO "Cloning ant..."
  git clone "https://github.com/marcilr/ant" ant
)


REM
REM ================================ DEBIAN =================================
REM ================================ DEBIAN =================================
REM ================================ DEBIAN =================================
REM
IF EXIST debian (
  ECHO "Updating debian..."
  ECHO "Running: git pull https://github.com/marcilr/debian"
  cd debian
  git pull https://github.com/marcilr/debian
  cd ..
) ELSE (
  ECHO "Cloning debian..."
  git clone "https://github.com/marcilr/debian" debian
)


REM
REM ================================ PARTED =================================
REM ================================ PARTED =================================
REM ================================ PARTED =================================
REM
IF EXIST parted (
  ECHO "Updating parted..."
  ECHO "Running: git pull https://github.com/marcilr/parted"
  cd debian
  git pull https://github.com/marcilr/parted
  cd ..
) ELSE (
  ECHO "Cloning debian..."
  git clone "https://github.com/marcilr/parted" parted
)


REM
REM ============================= VIRTUALIZATION ============================
REM ============================= VIRTUALIZATION ============================
REM ============================= VIRTUALIZATION ============================
REM
IF EXIST virtualization (
  ECHO "Updating virtualization..."
  ECHO "Running: git pull https://github.com/marcilr/virtualization"
  cd debian
  git pull https://github.com/marcilr/virtualization
  cd ..
) ELSE (
  ECHO "Cloning virtualization..."
  git clone "https://github.com/marcilr/virtualization"  virtualization
)


REM
REM ================================= VMWARE ================================
REM ================================= VMWARE ================================
REM ================================= VMWARE ================================
REM
IF EXIST vmware (
  ECHO "Updating vmware..."
  ECHO "Running: git pull https://github.com/marcilr/vmware"
  cd debian
  git pull https://github.com/marcilr/vmware
  cd ..
) ELSE (
  ECHO "Cloning vmware..."
  git clone "https://github.com/marcilr/vmware"  vmware
)