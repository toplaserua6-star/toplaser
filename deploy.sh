#!/bin/bash

# TopLaser - Скрипт деплою на GitHub + Vercel
# Використання: ./deploy.sh "Опис змін"

echo "🚀 TopLaser Deploy Script"
echo "========================="
echo ""

# Перевірка чи є Git
if ! command -v git &> /dev/null; then
    echo "❌ Git не встановлено. Встановіть Git: https://git-scm.com"
    exit 1
fi

# Перевірка чи ініціалізовано Git
if [ ! -d .git ]; then
    echo "📦 Ініціалізація Git..."
    git init
    echo "✅ Git ініціалізовано"
    echo ""
    
    echo "⚠️  Налаштуйте віддалений репозиторій:"
    echo "git remote add origin https://github.com/USERNAME/toplaser-landing.git"
    echo ""
    read -p "Введіть URL вашого GitHub репозиторію: " repo_url
    
    if [ -n "$repo_url" ]; then
        git remote add origin "$repo_url"
        echo "✅ Репозиторій додано: $repo_url"
    else
        echo "⚠️  Репозиторій не додано. Додайте вручну пізніше."
    fi
    echo ""
fi

# Commit message
if [ -z "$1" ]; then
    commit_msg="Update: $(date '+%Y-%m-%d %H:%M:%S')"
else
    commit_msg="$1"
fi

echo "📝 Commit message: $commit_msg"
echo ""

# Додати всі файли
echo "📂 Додавання файлів..."
git add .

# Перевірка чи є зміни
if git diff-index --quiet HEAD --; then
    echo "ℹ️  Немає змін для коміту"
    exit 0
fi

# Commit
echo "💾 Створення коміту..."
git commit -m "$commit_msg"

# Push
echo "⬆️  Завантаження на GitHub..."
git push origin main || git push origin master

echo ""
echo "✅ Деплой завершено!"
echo ""
echo "🌐 Vercel автоматично задеплоїть оновлення"
echo "📧 Перевірте https://vercel.com/dashboard"
echo ""
echo "🎉 Готово!"
