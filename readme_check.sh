for md_file in $(find ./ -name "*.md"); do
    echo "modify file $md_file"
    sed -i ':a;N;$!ba;s#details>\n  ```#details>\n  \n  ```#g' $md_file
done