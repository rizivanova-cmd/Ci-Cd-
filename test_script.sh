#!/bin/bash
echo "Starting web app tests..."

if grep -q '<link rel="stylesheet" href="style.css">' index.html; then
    echo "Test 2: CSS file linked correctly in index.html - PASSED"
else
    echo "Test 2: CSS file not linked correctly in index.html - FAILED"
    exit 1
fi
# Пример простой проверки контента
if grep -q 'Сериал: "Мэтлок"' index.html; then
    echo "Test 3: H1 tag found in index.html - PASSED"
else
    echo "Test 3: H1 tag not found in index.html - FAILED"
    exit 1
fi

echo "All tests completed successfully."
exit 0

