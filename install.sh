
THISDIR=`dirname $0`

BOOSTDIR=boost_1_61_0

rm -fr ${THISDIR}/boost
rm -fr ${THISDIR}/libs

cp -a ${THISDIR}/${BOOSTDIR}/out/boost ${THISDIR}/
cp -a ${THISDIR}/${BOOSTDIR}/out/libs ${THISDIR}/



