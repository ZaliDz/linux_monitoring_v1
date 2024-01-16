#!/bin/bash

total_dir=$(tree "$path" | grep "directories" | awk '{print $1}')
top5=$(du -h --max-depth=1 "$path" | sort -rh | head -5 | cat -n | awk '{printf "%-d - %-s, %-s\n", $1,$3,$2}')
total_files=$(find "$path" -maxdepth 1 -type f | wc | awk '{print $1}')
conf_files=$(find "$path" -type f -name ".conf" | wc | awk '{print $1}')
text_files=$(find "$path" -type f -name ".txt" | wc | awk '{print $1}')
exec_files=$(find "$path" -type f -executable | wc | awk '{print $1}')
log_files=$(find "$path" -type f -name ".log" | wc | awk '{print $1}')
arc_files=$(find "$path" -type f -name  ".rar" -o -name ".zip" -o -name ".7z" -o -name ".tar" | wc | awk '{print $1}')
symbolic=$(find "$path" -type l | wc -l)
top_file_size=$(find "$path" -type f -exec du -h {} + | sort -h -r | head -n 10 | awk '{print $1}')
top_file_name=$(find "$path" -type f -exec du -h {} + | sort -h -r | head -n 10 | awk '{print $2}')
top_file_type=$(find "$path" -type f -exec du -h {} + | sort -h -r | head -n 10 | awk '{print $2}' | awk 'BEGIN{FS=OFS="."} {print $NF}')
file_name=($top_file_name)
file_size=($top_file_size)
file_type=($top_file_type)
top_ex_name=$(find "$path" -type f -executable -exec du -h {} + | sort -h -r | head -n 10 | awk '{print $2}')
top_ex_size=$(find "$path" -type f -executable -exec du -h {} + | sort -h -r | head -n 10 | awk '{print $1}')
ex_name=($top_ex_name)
ex_size=($top_ex_size)
for ((i = 0; i < 10; i++)); do
  ex_hash[$i]=$(md5sum ${ex_name[$i]} | awk '{print $1}')
done
end=$(date +%s)

echo "Total number of folders (including all nested ones) = $total_dir"
echo "TOP 5 folders of maximum size arranged in descending order (path and size):  "
echo "$top5"
echo "Total number of files = $total_files"
echo "Number of:"
echo "Configuration files (with the .conf extension) = $conf_files"
echo "Text files = $text_files"
echo "Executable files = $exec_files"
echo "Log files (with the extension .log) = $log_files"
echo "Archive files = $arc_files"
echo "Symbolic links = $symbolic"
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
for ((i = 1; i <= 10; i++)); do
  echo "$i - ${file_name[$i - 1]}, ${file_size[$i - 1]}, ${file_type[$i - 1]}"
done
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file) "
for ((i = 1; i <= 10; i++)); do
  echo "$i - ${ex_name[$i - 1]}, ${ex_size[$i - 1]}, ${ex_hash[$i - 1]}"
done
echo "Script execution time (in seconds) = "$(($end - $start))
