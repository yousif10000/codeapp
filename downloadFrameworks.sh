# Clean previous downloads
rm -rf Resources

mkdir Resources
cd Resources

# Python
curl -OL https://github.com/bummoblizard/cpython/releases/download/1.0.1/cpython.zip
unzip -q cpython.zip
rm -f cpython.zip

# llvm
for lib in ar link libLLVM lld clang nm dis llc lli opt; do
    curl -OL https://github.com/holzschu/llvm-project/releases/download/13.0.0/$lib.xcframework.zip
    unzip -q $lib.xcframework.zip -d llvm
    rm -f $lib.xcframework.zip 
done 

# ios_system
for lib in files curl_ios awk text shell tar ios_system; do
    curl -OL https://github.com/holzschu/ios_system/releases/download/v3.0.0/$lib.xcframework.zip
    unzip -q $lib.xcframework.zip -d Term
    rm -f $lib.xcframework.zip 
done

# network_ios
curl -OL https://github.com/holzschu/network_ios/releases/download/v0.2/network_ios.xcframework.zip
unzip -q network_ios.xcframework.zip -d Term
rm -f network_ios.xcframework.zip 

# We are using an older version of SSH / SFTP
curl -OL https://github.com/holzschu/ios_system/releases/download/v2.7.0/ssh_cmd.xcframework.zip
unzip -q ssh_cmd.xcframework.zip -d Term
rm -f ssh_cmd.xcframework.zip

curl -OL https://github.com/holzschu/libssh2-for-iOS/releases/download/v1.2/openssl.xcframework.zip
unzip -q openssl.xcframework.zip -d Term
rm -f openssl.xcframework.zip

curl -OL https://github.com/holzschu/libssh2-for-iOS/releases/download/v1.2/libssh2.xcframework.zip
unzip -q libssh2.xcframework.zip -d Term
rm -f libssh2.xcframework.zip

# Python auxiliaries
for lib in harfbuzz freetype libpng; do
    curl -OL https://github.com/holzschu/Python-aux/releases/download/1.0/$lib.xcframework.zip
    unzip -q $lib.xcframework.zip -d PythonAux
    rm -f $lib.xcframework.zip 
done

# Node.js
curl -OL https://github.com/thebaselab/nodejs-mobile/releases/download/16.3.2/nodejs-mobile-16.zip
unzip -q nodejs-mobile-16.zip -d NodeJS
rm -f nodejs-mobile-16.zip

# PHP
curl -OL https://github.com/bummoblizard/php-src/releases/download/v0.2/php.xcframework.zip
unzip -q php.xcframework -d PHP
rm -f php.xcframework.zip

echo "Done!"
