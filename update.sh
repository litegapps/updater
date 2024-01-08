SED(){
	local INPUT=$1
	local OUTPUT=$2
	local FILE=$3
	sed -i 's,'"${INPUT}"','"${OUTPUT}"',g' $FILE
	}
get_android_version(){
	local input=$1
	case $input in
		21) echo 5.0 ;;
		22) echo 5.1 ;;
		23) echo 6.0 ;;
		24) echo 7.0 ;;
		25) echo 7.1 ;;
		26) echo 8.0 ;;
		27) echo 8.1 ;;
		28) echo 9.0 ;;
		29) echo 10.0 ;;
		30) echo 11.0 ;;
		31) echo 12.0 ;;
		32) echo 12.1 ;;
		33) echo 13.0 ;;
		34) echo 14.0 ;;
	 esac
	}
printmid() {
  local CHAR=$(printf "$@" | sed 's|\\e[[0-9;]*m||g' | wc -m)
  local hfCOLUMN=$((COLUMNS/2))
  local hfCHAR=$((CHAR/2))
  local indent=$((hfCOLUMN-hfCHAR))
  echo "$(printf '%*s' "${indent}" '') $@"
}

version=v999.9
versioncode=9999
changelog=https://raw.githubusercontent.com/litegapps/updater/main/changelog/litegapps.md


#litegapps
arch="
arm
arm64
"
api="
29
28
29
30
31
32
33
34
"

BASE=`dirname $(readlink -f $0)`

printmid "LiteGapps Updater Tool"
echo
echo "- make updater"
echo "- Make Litegapps Pixel"
for ARCH in $arch; do
	for API in $api; do
		for TYPE in MAGISK RECOVERY AUTO; do
			unset URL
			URL=https://www.toprevenuegate.com/b9p0mwvwgs?key=c882ea866d79e457f018e720ee79a171
			#URL=https://sourceforge.net/projects/litegapps/files/litegapps/$ARCH/$API/pixel/%5B${TYPE}%5DLiteGapps_Pixel_${ARCH}_$(get_android_version $API)_${version}_official.zip/download
			unset DIR
			DIR=$BASE/core/litegapps/pixel/$ARCH/$API/$TYPE
			if [ ! -d $DIR ]; then
				mkdir -p $DIR
			else
				rm -rf $DIR
				mkdir -p $DIR
			fi
			cp -pf $BASE/update.json $DIR/
			SED "1111" "$version" $DIR/update.json
			SED "2222" "$versioncode" $DIR/update.json
			SED "3333" "$URL" $DIR/update.json
			SED "4444" "$changelog" $DIR/update.json
		done
	done
done

echo "- Make Litegapps Micro"
for ARCH in $arch; do
	for API in $api; do
		for TYPE in MAGISK RECOVERY AUTO; do
			unset URL
			URL=https://www.toprevenuegate.com/b9p0mwvwgs?key=c882ea866d79e457f018e720ee79a171
			#URL=https://sourceforge.net/projects/litegapps/files/litegapps/$ARCH/$API/micro/%5B${TYPE}%5DLiteGapps_Micro_${ARCH}_$(get_android_version $API)_${version}_official.zip/download
			unset DIR
			DIR=$BASE/core/litegapps/micro/$ARCH/$API/$TYPE
			if [ ! -d $DIR ]; then
				mkdir -p $DIR
			else
				rm -rf $DIR
				mkdir -p $DIR
			fi
			cp -pf $BASE/update.json $DIR/
			SED "1111" "$version" $DIR/update.json
			SED "2222" "$versioncode" $DIR/update.json
			SED "3333" "$URL" $DIR/update.json
			SED "4444" "$changelog" $DIR/update.json
		done
	done
done

echo "- Make Litegapps Nano"
for ARCH in $arch; do
	for API in $api; do
		for TYPE in MAGISK RECOVERY AUTO; do
			unset URL
			URL=https://www.toprevenuegate.com/b9p0mwvwgs?key=c882ea866d79e457f018e720ee79a171
			#URL=https://sourceforge.net/projects/litegapps/files/litegapps/$ARCH/$API/nano/$version/%5B${TYPE}%5DLiteGapps_Nano_${ARCH}_$(get_android_version $API)_${version}_official.zip/download
			unset DIR
			DIR=$BASE/core/litegapps/nano/$ARCH/$API/$TYPE
			if [ ! -d $DIR ]; then
				mkdir -p $DIR
			else
				rm -rf $DIR
				mkdir -p $DIR
			fi
			cp -pf $BASE/update.json $DIR/
			SED "1111" "$version" $DIR/update.json
			SED "2222" "$versioncode" $DIR/update.json
			SED "3333" "$URL" $DIR/update.json
			SED "4444" "$changelog" $DIR/update.json
		done
	done
done

echo "- Make Litegapps Basic"
for ARCH in $arch; do
	for API in $api; do
		for TYPE in MAGISK RECOVERY AUTO; do
			unset URL
			URL=https://www.toprevenuegate.com/b9p0mwvwgs?key=c882ea866d79e457f018e720ee79a171
			#URL=https://sourceforge.net/projects/litegapps/files/litegapps/$ARCH/$API/basic/$version/%5B${TYPE}%5DLiteGapps_Basic_${ARCH}_$(get_android_version $API)_${version}_official.zip/download
			unset DIR
			DIR=$BASE/core/litegapps/basic/$ARCH/$API/$TYPE
			if [ ! -d $DIR ]; then
				mkdir -p $DIR
			else
				rm -rf $DIR
				mkdir -p $DIR
			fi
			cp -pf $BASE/update.json $DIR/
			SED "1111" "$version" $DIR/update.json
			SED "2222" "$versioncode" $DIR/update.json
			SED "3333" "$URL" $DIR/update.json
			SED "4444" "$changelog" $DIR/update.json
		done
	done
done

echo "- Make Litegapps User"
for ARCH in $arch; do
	for API in $api; do
		for TYPE in MAGISK RECOVERY AUTO; do
			unset URL
			URL=https://www.toprevenuegate.com/b9p0mwvwgs?key=c882ea866d79e457f018e720ee79a171
			#URL=https://sourceforge.net/projects/litegapps/files/litegapps/$ARCH/$API/user/$version/%5B${TYPE}%5DLiteGapps_User_${ARCH}_$(get_android_version $API)_${version}_official.zip/download
			unset DIR
			DIR=$BASE/core/litegapps/user/$ARCH/$API/$TYPE
			if [ ! -d $DIR ]; then
				mkdir -p $DIR
			else
				rm -rf $DIR
				mkdir -p $DIR
			fi
			cp -pf $BASE/update.json $DIR/
			SED "1111" "$version" $DIR/update.json
			SED "2222" "$versioncode" $DIR/update.json
			SED "3333" "$URL" $DIR/update.json
			SED "4444" "$changelog" $DIR/update.json
		done
	done
done

echo "- Make Litegapps Go"
for ARCH in $arch; do
	for API in $api; do
		for TYPE in MAGISK RECOVERY AUTO; do
			unset URL
			URL=https://www.toprevenuegate.com/b9p0mwvwgs?key=c882ea866d79e457f018e720ee79a171
			#URL=https://sourceforge.net/projects/litegapps/files/litegapps/$ARCH/$API/go/$version/%5B${TYPE}%5DLiteGapps_Go_${ARCH}_$(get_android_version $API)_${version}_official.zip/download
			unset DIR
			DIR=$BASE/core/litegapps/go/$ARCH/$API/$TYPE
			if [ ! -d $DIR ]; then
				mkdir -p $DIR
			else
				rm -rf $DIR
				mkdir -p $DIR
			fi
			cp -pf $BASE/update.json $DIR/
			SED "1111" "$version" $DIR/update.json
			SED "2222" "$versioncode" $DIR/update.json
			SED "3333" "$URL" $DIR/update.json
			SED "4444" "$changelog" $DIR/update.json
		done
	done
done

echo "- Make Litegapps Core"
for ARCH in $arch; do
	for API in $api; do
		for TYPE in MAGISK RECOVERY AUTO; do
			unset URL
			URL=https://www.toprevenuegate.com/b9p0mwvwgs?key=c882ea866d79e457f018e720ee79a171
			#URL=https://sourceforge.net/projects/litegapps/files/litegapps/$ARCH/$API/core/$version/%5B${TYPE}%5DLiteGapps_Core_${ARCH}_$(get_android_version $API)_${version}_official.zip/download
			unset DIR
			DIR=$BASE/core/litegapps/core/$ARCH/$API/$TYPE
			if [ ! -d $DIR ]; then
				mkdir -p $DIR
			else
				rm -rf $DIR
				mkdir -p $DIR
			fi
			cp -pf $BASE/update.json $DIR/
			SED "1111" "$version" $DIR/update.json
			SED "2222" "$versioncode" $DIR/update.json
			SED "3333" "$URL" $DIR/update.json
			SED "4444" "$changelog" $DIR/update.json
		done
	done
done

echo "- Make Litegapps Lite"
for ARCH in $arch; do
	for API in $api; do
		for TYPE in MAGISK RECOVERY AUTO; do
			unset URL
			URL=https://www.toprevenuegate.com/b9p0mwvwgs?key=c882ea866d79e457f018e720ee79a171
			#URL=https://sourceforge.net/projects/litegapps/files/litegapps/$ARCH/$API/lite/$version/%5B${TYPE}%5DLiteGapps_${ARCH}_$(get_android_version $API)_${version}_official.zip/download
			unset DIR
			DIR=$BASE/core/litegapps/lite/$ARCH/$API/$TYPE
			if [ ! -d $DIR ]; then
				mkdir -p $DIR
			else
				rm -rf $DIR
				mkdir -p $DIR
			fi
			cp -pf $BASE/update.json $DIR/
			SED "1111" "$version" $DIR/update.json
			SED "2222" "$versioncode" $DIR/update.json
			SED "3333" "$URL" $DIR/update.json
			SED "4444" "$changelog" $DIR/update.json
		done
	done
done


changelog=https://raw.githubusercontent.com/litegapps/updater/main/changelog/litegapps++_reguler.md
echo "- Make Litegapps++ reguler"
for TYPE in MAGISK RECOVERY AUTO; do
		unset URL
		URL=https://www.toprevenuegate.com/b9p0mwvwgs?key=c882ea866d79e457f018e720ee79a171
		#URL=https://sourceforge.net/projects/litegapps/files/litegapps++/reguler/$version/%5B${TYPE}%5DLiteGapps++_${version}_official.zip/download
		unset DIR
		DIR=$BASE/core/litegapps++/reguler/$TYPE
		if [ ! -d $DIR ]; then
			mkdir -p $DIR
		else
			rm -rf $DIR
			mkdir -p $DIR
		fi
		cp -pf $BASE/update.json $DIR/
		SED "1111" "$version" $DIR/update.json
		SED "2222" "$versioncode" $DIR/update.json
		SED "3333" "$URL" $DIR/update.json
		SED "4444" "$changelog" $DIR/update.json
done

changelog=https://raw.githubusercontent.com/litegapps/updater/main/changelog/litegapps++_lts.md
echo "- Make Litegapps++ LTS"
for TYPE in MAGISK RECOVERY AUTO; do
		unset URL
		URL=https://www.toprevenuegate.com/b9p0mwvwgs?key=c882ea866d79e457f018e720ee79a171
		#URL=https://sourceforge.net/projects/litegapps/files/litegapps++/lts/$version/%5B${TYPE}%5DLiteGapps++_LTS_${version}_official.zip/download
		unset DIR
		DIR=$BASE/core/litegapps++/lts/$TYPE
		if [ ! -d $DIR ]; then
			mkdir -p $DIR
		else
			rm -rf $DIR
			mkdir -p $DIR
		fi
		cp -pf $BASE/update.json $DIR/
		SED "1111" "$version" $DIR/update.json
		SED "2222" "$versioncode" $DIR/update.json
		SED "3333" "$URL" $DIR/update.json
		SED "4444" "$changelog" $DIR/update.json
done

changelog=https://raw.githubusercontent.com/litegapps/updater/main/changelog/litegapps++_microg.md
echo "- Make Litegapps++ MicroG"
for TYPE in MAGISK RECOVERY AUTO; do
		unset URL
		URL=https://www.toprevenuegate.com/b9p0mwvwgs?key=c882ea866d79e457f018e720ee79a171
		#URL=https://sourceforge.net/projects/litegapps/files/litegapps++/microg/$version/%5B${TYPE}%5DLiteGapps++_MicroG_${version}_official.zip/download
		unset DIR
		DIR=$BASE/core/litegapps++/microg/$TYPE
		if [ ! -d $DIR ]; then
			mkdir -p $DIR
		else
			rm -rf $DIR
			mkdir -p $DIR
		fi
		cp -pf $BASE/update.json $DIR/
		SED "1111" "$version" $DIR/update.json
		SED "2222" "$versioncode" $DIR/update.json
		SED "3333" "$URL" $DIR/update.json
		SED "4444" "$changelog" $DIR/update.json
done

