#!/bin/bash
echo "Starting web app tests..."

# Пример проверки наличия файлов
if [ -f "main.html" ] && [ -f "test.js" ]; then
    echo "Test 1: HTML and CSS files exist - PASSED"
else
    echo "Test 1: HTML or CSS files are missing - FAILED"
    exit 1
fi
if grep -q '<link rel="stylesheet" href="style.css">' main.html; then
    echo "Test 2: CSS file linked correctly in main.html - PASSED"
else
    echo "Test 2: CSS file not linked correctly in main.html - FAILED"
    exit 1
fi
# Пример простой проверки контента
if grep -q "Сериал: "Мэтлок"" main.html; then
    echo "Test 3: H1 tag found in main.html - PASSED"
else
    echo "Test 3: H1 tag not found in main.html - FAILED"
    exit 1
fi

echo "All tests completed successfully."
exit 0

