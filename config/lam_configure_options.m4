dnl -*- shell-script -*-
dnl
dnl $HEADER$
dnl
dnl $Id: lam_configure_options.m4,v 1.1 2004/01/07 07:42:12 jsquyres Exp $
dnl

AC_DEFUN(LAM_CONFIGURE_OPTIONS,[
lam_show_subtitle "Configuration options"

#
# Purify clean
#

AC_MSG_CHECKING([whether to enable memory zeroing])
AC_ARG_ENABLE(memzero, 
    AC_HELP_STRING([--enable-memzero],
                   [enable memory zeroing (debugging only)]))
if test "$enable_memzero" = "yes"; then
    AC_MSG_RESULT([yes])
    want_memzero=1
else
    AC_MSG_RESULT([no])
    want_memzero=0
fi
AC_DEFINE_UNQUOTED(LAM_ENABLE_MEMZERO, $want_memzero,
    [Whether we want the LAM_MEMZERO macro to memset or not])

#
# Developer debugging
#

AC_MSG_CHECKING([if want developer-level debugging code])
AC_ARG_ENABLE(purify, 
    AC_HELP_STRING([--enable-debug],
                   [enable developer-level debugging code (not for general MPI users!)]))
if test "$enable_debug" = "yes"; then
    AC_MSG_RESULT([yes])
    want_debug=1
else
    AC_MSG_RESULT([no])
    want_debug=0
fi
AC_DEFINE_UNQUOTED(LAM_ENABLE_DEBUG, $want_debug,
    [Whether we want developer-level debugging code or not])

# --enable-dist
# --disable-profile
# --disable-f77
# ...?

# amorphous, seem-to-be-good-idea options
# --with-lam=maintainer_options
# --with-mca-*
# ...?
])
