# cd ..

ver=1.3-rc;
base=$(pwd);
mvn clean package
rm -rf ${base}/../aeroplanes-chess/repo/com/dotterbear/websocket-gameroom/
mvn deploy:deploy-file -Durl=file://${base}/../aeroplanes-chess/repo -Dfile=${base}/target/websocket-gameroom-$ver.jar -DgroupId=com.dotterbear -DartifactId=websocket-gameroom -Dpackaging=jar -Dversion=${ver}