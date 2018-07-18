read -p "Which the page would be compiled (Example: index)? " filename

parcel ./src/pug/page/${filename}/${filename}.pug  --open -p 3000