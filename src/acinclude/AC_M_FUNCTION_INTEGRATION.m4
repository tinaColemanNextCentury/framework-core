dnl
dnl This file is protected by Copyright. Please refer to the COPYRIGHT file 
dnl distributed with this source distribution.
dnl 
dnl This file is part of REDHAWK core.
dnl 
dnl REDHAWK core is free software: you can redistribute it and/or modify it under 
dnl the terms of the GNU Lesser General Public License as published by the Free 
dnl Software Foundation, either version 3 of the License, or (at your option) any 
dnl later version.
dnl 
dnl REDHAWK core is distributed in the hope that it will be useful, but WITHOUT 
dnl ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS 
dnl FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for more
dnl details.
dnl 
dnl You should have received a copy of the GNU Lesser General Public License 
dnl along with this program.  If not, see http://www.gnu.org/licenses/.
dnl
AC_DEFUN([AC_HEADER_M_FUNCTION],
[
dnl look for "include/octave" followed by a "x.y.z" version number.
dnl "-print -quit" grabs the first result
dnl "2>/dev/null" gets rid of permission denied warnings
M_FUNCTION_INTERPRETER_INCLUDE="-I"`find /usr -regextype posix-extended -regex ".*include\/octave\-[[0-9]]+\.[[0-9]]+\.[[0-9]]+$" -print -quit 2>/dev/null`
dnl TODO: accept arguments from command-line
AC_SUBST(M_FUNCTION_INTERPRETER_INCLUDE)
])
AC_DEFUN([AC_LIB_M_FUNCTION],
[
dnl look for "lib/octave/" or "lib64/octave/" followed by a "x.y.z" version number.
dnl "-print -quit" grabs the first result
dnl "2>/dev/null" gets rid of permission denied warnings
M_FUNCTION_INTERPRETER_LOAD="-L"`find /usr -regextype posix-extended -regex ".*lib[[6]]?[[4]]?\/octave\/[[0-9]]+\.[[0-9]]+\.[[0-9]]+$" -print -quit 2>/dev/null`" -loctave -loctinterp"
dnl TODO: accept arguments from command-line
AC_SUBST(M_FUNCTION_INTERPRETER_LOAD)
])
