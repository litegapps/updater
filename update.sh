SED(){
	local INPUT=$1
	local OUTPUT=$2
	local FILE=$3
	sed -i 's,'"${INPUT}"','"${OUTPUT}"',g' $FILE
	}

version=
versioncode=
changelog=


#litegapps
arch="
arm
arm64
"
api="
29
30
31
32
"

BASE=`dirname $(readlink -f $0)`


for ARCH in $arch; do
	for API in $api; do
		for TYPE in MAGISK RECOVERY AUTO; do
			unset DIR
			DIR=$BASE/core/litegapps/pixel/$ARCH/$API/$TYPE
			if [ ! -d $DIR ]; then
				mkdir -p $DIR
			else
				rm -rf $DIR
				mkdir -p $DIR
			fi
			cp -pf $BASE/update.json $DIR/
		done
	done
done
