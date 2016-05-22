
THISDIR=`dirname $0`

BOOSTDIR=boost_1_61_0

cd ${THISDIR}
cd ${BOOSTDIR}

if [ ! -f dist/bin/bcp ]; then
	./bootstrap.sh
	./b2 tools/bcp
fi

rmdir out -fr
mkdir -p out
dist/bin/bcp	\
	make_shared.hpp	\
	boost/enable_shared_from_this.hpp	\
	bind.hpp	\
	asio.hpp	\
	out



