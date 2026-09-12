COMMENT =	Platt 550-point version of Colossal Cave Adventure
DISTNAME =	adv550-20190711

# Grab a specific commit from Quuxplusone/Advent
GH_ACCOUNT =	Quuxplusone
GH_PROJECT =	Advent
GH_COMMIT =	531e061bdeeb782229a11c030f0164310a33f9cd

CATEGORIES =	games

HOMEPAGE =	https://github.com/Quuxplusone/Advent

# License of the code repository / original Fortran files
PERMIT_PACKAGE =	Yes

# Require Fortran compiler from GCC
BUILD_DEPENDS  =        lang/gcc/15,-f95 \
			devel/gmake

USE_GMAKE      =        Yes

# Point the build directory to the sub-folder inside the repo archive
WRKSRC =	${WRKDIST}/PLAT0550

ALL_TARGET =    adv550

MAKE_ENV   =    FORTRAN="gfortran -std=legacy"

# Configure compiler flags and variables
MAKE_FLAGS =	FORTRAN="gfortran -std=legacy"

# Target to install binary into fake destination directory
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/adv550 ${PREFIX}/bin/adv550
	${INSTALL_DATA_DIR} ${PREFIX}/share/adv550
	${INSTALL_DATA} ${WRKSRC}/ADVINIT[1-4].DAT ${PREFIX}/share/adv550/

.include <bsd.port.mk>
