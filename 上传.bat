@echo off
cls
cd ./public/
echo uploading...
scp -r . tx:/www/wwwroot/ziyangzhang.cn/
echo done!

