
THISDIR=`dirname $0`

BOOSTDIR=boost_1_71_0

cp ${THISDIR}/libs/CMakeLists.txt ${THISDIR}/libs.cmake

rm -fr ${THISDIR}/boost
rm -fr ${THISDIR}/libs

cp -a ${THISDIR}/${BOOSTDIR}/out/boost ${THISDIR}/
cp -a ${THISDIR}/${BOOSTDIR}/out/libs ${THISDIR}/

mv ${THISDIR}/libs.cmake ${THISDIR}/libs/CMakeLists.txt

