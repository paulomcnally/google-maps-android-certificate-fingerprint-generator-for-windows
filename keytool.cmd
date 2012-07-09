@echo off

cd "C:\Program Files\Java\jre7\bin\"
keytool -v -list -alias androiddebugkey -keystore %userprofile%\.android\debug.keystore -storepass android -keypass android