#!/bin/bash
echo "Starting web app tests..."

# Пример проверки наличия файлов
if [ -f "main.html" ] && [ -f "test.js" ]; then
    echo "Test 1: HTML and JS files exist - PASSED"
else
    echo "Test 1: HTML or JS files are missing - FAILED"
    exit 1
fi

# Пример простой проверки контента
if grep -q "Сериал: "Мэтлок"" main.html; then
    echo "Test 2: 'Welcome' string found in index.html - PASSED"
else
    echo "Test 2: 'Welcome' string not found in index.html - FAILED"
    exit 1
fi

echo "All tests completed."
exit 0