read -p "Which the file would you want to compile (Example: index.pug)? " filename

mv dist/*.html .
rm -rf dist/
mkdir dist
mv *.html dist/
parcel build ./${filename}
tar -cvf dist.tar dist/