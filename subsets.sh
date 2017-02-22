
THISDIR=`dirname $0`

BOOSTDIR=boost_1_61_0

cd ${THISDIR}
cd ${BOOSTDIR}

if [ ! -f dist/bin/bcp ]; then
	./bootstrap.sh
	./b2 tools/bcp
fi

rm out -fr
mkdir -p out
dist/bin/bcp	\
	boost/type_traits.hpp	\
	boost/smart_ptr.hpp	\
	make_shared.hpp	\
	boost/enable_shared_from_this.hpp	\
	bind.hpp	\
	asio.hpp	\
	thread.hpp	\
	boost/thread/executors/scheduler.hpp	\
	unordered_map	\
	unordered_set	\
	boost/uuid/uuid_io.hpp	\
	boost/uuid/uuid_generators.hpp	\
	boost/algorithm/string.hpp	\
	out



