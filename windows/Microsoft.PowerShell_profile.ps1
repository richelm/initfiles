# --------------------------------------------------------------------  
#   MICHIGAN STATE UNIVERSITY COLLEGE OF EDUCATION TEACHER EDUCATION
# --------------------------------------------------------------------
#
# FILE: ~\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
#
# Windows PROFILE for PowerShell
#
# --------------------------------------------------------------------  
# CHANGELOG:
#   20170619 File created.
#
# --------------------------------------------------------------------  


# set colors
[console]::BackgroundColor = "Black"
[console]::ForegroundColor = "White"
$host.PrivateData.ErrorBackgroundColor = "White"
$host.PrivateData.ErrorForegroundColor = "Red"


# environmental variables
$ENV:DBDEV = "EDUC-SRVSQL2DEV.CAMPUSAD.MSU.EDU\SRVSQL2DEV"
$ENV:DBPRO = "EDUC-SRVSQL2PRO.CAMPUSAD.MSU.EDU"


# set directory to TE
function te { set-location C:\Users\richs\Documents\TE }

# set directory to $home
function home { set-location $home }

# set prompt to current directory name
function prompt {
  $p = Split-Path -leaf -path (Get-Location)
  "$p> "
}

# 	"DBServer: (get-item env:$server).Value"
function sqlc ($srv, $fname) {
	$s = (get-item env:$srv).Value
	sqlcmd -S $s -h -1 -i $fname
}


# ALIASES
set-alias vim "C:\Program Files (x86)\Vim\vim80\.\vim.exe"
set-alias e "C:\Program Files (x86)\Notepad++\notepad++"
set-alias ll "ls"
set-alias csc "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe"
