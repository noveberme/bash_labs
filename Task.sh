#7.Сохранить в файл выдержку из мануала к команде ls (man ls), в которой будет описано использование ключа -r.
#!/bin/bash

output_file="output.txt"

result=$(man ls | awk '/-r, --reverse/{flag=1} flag && /^[[:space:]]*$/ {flag=0} flag')

echo "$result" > "$output_file"

if [[ -s $output_file ]]; then
  echo "Выдержка успешно сохранена в файл $output_file."
else
  echo "Ошибка: не удалось извлечь выдержку или она пуста."
fi

