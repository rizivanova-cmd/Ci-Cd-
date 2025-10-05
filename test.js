function runTests() {
    const resultElement = document.getElementById('test-result');
    let allTestsPassed = true;

    // Тест 1: Проверка заголовка
    const h1 = document.querySelector('h1');
    if (h1 && h1.textContent === 'Сериал: "Мэтлок"') {
        console.log('Test 1 passed: Heading is correct.');
    } else {
        console.error('Test 1 failed: Heading is incorrect or missing.');
        allTestsPassed = false;
    }

    // Тест 2: Проверка наличия параграфа
    const p = document.querySelector('p');
    if (p) {
        console.log('Test 2 passed: Paragraph is present.');
    } else {
        console.error('Test 2 failed: Paragraph is missing.');
        allTestsPassed = false;
    }

    if (allTestsPassed) {
        resultElement.textContent = 'All basic tests passed successfully!';
        resultElement.style.color = 'green';
    } else {
        resultElement.textContent = 'Some tests failed. Check console for details.';
        resultElement.style.color = 'red';
    }
}

// Вызываем тесты при загрузке страницы
window.onload = runTests;