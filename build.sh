read -p "Which the page would be compiled (Example: index)? " filename

mv dist/*.html .
rm -rf dist/
mkdir dist
mv *.html dist/
parcel build ./src/pug/page/${filename}/${filename}.pug
tar -cvf dist.tar dist/