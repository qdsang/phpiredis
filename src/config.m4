dnl $Id$
dnl config.m4 for extension phpiredis

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(phpiredis, for phpiredis support,
dnl Make sure that the comment is aligned:
dnl [  --with-phpiredis             Include phpiredis support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(phpiredis, whether to enable phpiredis support,
dnl Make sure that the comment is aligned:
dnl [  --enable-phpiredis           Enable phpiredis support])

if test "$PHP_PHPIREDIS" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-phpiredis -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/phpiredis.h"  # you most likely want to change this
  dnl if test -r $PHP_PHPIREDIS/$SEARCH_FOR; then # path given as parameter
  dnl   PHPIREDIS_DIR=$PHP_PHPIREDIS
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for phpiredis files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       PHPIREDIS_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$PHPIREDIS_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the phpiredis distribution])
  dnl fi

  dnl # --with-phpiredis -> add include path
  dnl PHP_ADD_INCLUDE($PHPIREDIS_DIR/include)

  dnl # --with-phpiredis -> check for lib and symbol presence
  dnl LIBNAME=phpiredis # you may want to change this
  dnl LIBSYMBOL=phpiredis # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $PHPIREDIS_DIR/lib, PHPIREDIS_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_PHPIREDISLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong phpiredis lib version or lib not found])
  dnl ],[
  dnl   -L$PHPIREDIS_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(PHPIREDIS_SHARED_LIBADD)

  PHP_NEW_EXTENSION(phpiredis, phpiredis.c, $ext_shared)
fi
