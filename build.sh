read -p "Which the page would be compiled (Example: index)? " filename

# remove old files
rm -rf dist/

# for production
parcel build ./src/pug/page/${filename}/${filename}.pug

# start moving files
mkdir dist/images 
mkdir dist/src
mv dist/ ${filename}/
mv ${filename}/*.js ${filename}/src
mv ${filename}/*.css ${filename}/src
rm ${filename}/*.map
find ${filename} -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.gif" \) -exec mv {} ${filename}/images \;

# replace path that parcel was generating in HTML.
sed -i '' 's/src="/src=".\/images/g; s/<script src=".\/images/<script src=".\/src/g; s/<link rel="stylesheet" href="/<link rel="stylesheet" href=".\/src/g' ${filename}/${filename}.html

# repalce path that parcel was generating in css
sed -i '' 's/url("/replace_to_fack/g; s/url(/url(..\/images\//g; s/replace_to_fack/url("/g' ${filename}/src/*.css

# compress the folder and remove itself
tar -cvf ${filename}.tar ${filename}/
rm -rf ${filename}/