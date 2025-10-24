# 🚀 Деплой TopLaser на GitHub + Vercel

## 📋 Покрокова інструкція

### 1️⃣ Підготовка GitHub

#### Створіть репозиторій на GitHub

1. Перейдіть на [github.com](https://github.com)
2. Натисніть **"New repository"**
3. Заповніть:
   - **Repository name:** `toplaser-landing`
   - **Description:** `TopLaser - преміум-лендинг для продажу лазерного рівня`
   - **Visibility:** Public або Private
   - ❌ **НЕ** вмикайте "Initialize with README"
4. Натисніть **"Create repository"**

### 2️⃣ Завантаження на GitHub

Відкрийте термінал у папці `TopLaser` та виконайте:

```bash
# Ініціалізація Git
git init

# Додати всі файли
git add .

# Перший коміт
git commit -m "Initial commit: TopLaser landing page"

# Додати віддалений репозиторій (замініть USERNAME на ваш GitHub username)
git remote add origin https://github.com/USERNAME/toplaser-landing.git

# Перейменувати гілку на main
git branch -M main

# Завантажити на GitHub
git push -u origin main
```

**Приклад з вашим username:**
```bash
git remote add origin https://github.com/sergejcerkasov/toplaser-landing.git
```

### 3️⃣ Деплой на Vercel

#### Варіант А: Через веб-інтерфейс (рекомендовано)

1. Перейдіть на [vercel.com](https://vercel.com)
2. Натисніть **"Sign Up"** або **"Log In"**
3. Увійдіть через GitHub
4. Натисніть **"Add New Project"**
5. Виберіть репозиторій `toplaser-landing`
6. Налаштування:
   - **Framework Preset:** Other
   - **Root Directory:** `./`
   - **Build Command:** (залиште порожнім)
   - **Output Directory:** `./`
7. Натисніть **"Deploy"**
8. ✅ Готово! Через 30-60 секунд сайт буде онлайн

#### Варіант Б: Через CLI

```bash
# Встановити Vercel CLI
npm i -g vercel

# Увійти в акаунт
vercel login

# Деплой
vercel

# Для продакшн-деплою
vercel --prod
```

### 4️⃣ Активація FormSubmit

⚠️ **ВАЖЛИВО:** Після деплою потрібно активувати email!

1. Відкрийте ваш сайт на Vercel (наприклад, `https://toplaser-landing.vercel.app`)
2. Заповніть форму замовлення тестовими даними
3. Натисніть "Надіслати заявку"
4. Перевірте пошту **toplaserua6@gmail.com**
5. Знайдіть лист від **FormSubmit** (перевірте спам!)
6. Натисніть **"Activate Form"**
7. ✅ Тепер всі заявки приходять автоматично!

### 5️⃣ Налаштування домену (опціонально)

#### На Vercel:

1. Перейдіть у **Settings** → **Domains**
2. Додайте свій домен (наприклад, `toplaser.com`)
3. Налаштуйте DNS записи у вашого реєстратора:
   ```
   Type: A
   Name: @
   Value: 76.76.21.21
   
   Type: CNAME
   Name: www
   Value: cname.vercel-dns.com
   ```
4. Зачекайте 5-30 хвилин на поширення DNS
5. ✅ Сайт доступний на вашому домені!

#### Оновити редірект форми:

Після налаштування домену оновіть `index.html`, рядок 262:

```html
<input type="hidden" name="_next" value="https://toplaser.com/thank-you.html">
```

Закомітьте зміни:
```bash
git add index.html
git commit -m "Update form redirect URL"
git push
```

Vercel автоматично задеплоїть оновлення!

## 🔄 Оновлення сайту

### Внести зміни:

```bash
# 1. Відредагуйте файли
# 2. Додайте зміни
git add .

# 3. Закомітьте
git commit -m "Опис змін"

# 4. Завантажте на GitHub
git push
```

✅ Vercel **автоматично** задеплоїть оновлення!

## 📊 Моніторинг

### Vercel Dashboard

- **URL:** https://vercel.com/dashboard
- **Аналітика:** кількість відвідувачів
- **Логи:** помилки та запити
- **Deployments:** історія деплоїв

### GitHub

- **Commits:** історія змін
- **Issues:** відстеження проблем
- **Actions:** автоматизація (опціонально)

## 🔧 Корисні команди

```bash
# Перевірити статус
git status

# Подивитися історію
git log --oneline

# Скасувати зміни
git checkout -- filename

# Створити нову гілку
git checkout -b feature-name

# Об'єднати гілки
git merge feature-name

# Видалити локальну гілку
git branch -d feature-name
```

## 🌐 Приклади URL

### Vercel автоматичні URL:

- **Production:** `https://toplaser-landing.vercel.app`
- **Preview (гілки):** `https://toplaser-landing-git-branch.vercel.app`
- **Кожен коміт:** унікальний URL для тестування

### З власним доменом:

- **Production:** `https://toplaser.com`
- **WWW:** `https://www.toplaser.com` (автоматичний редірект)

## 📱 Тестування

### Після деплою перевірте:

- ✅ Сайт відкривається
- ✅ Всі зображення завантажуються
- ✅ Відео відтворюється
- ✅ Галерея працює (клік на мініатюри)
- ✅ Таймер відраховує
- ✅ Перемикач мов працює
- ✅ Форма відправляється
- ✅ Редірект на thank-you.html
- ✅ Email приходить на toplaserua6@gmail.com

## 🔐 Безпека

### GitHub:

- ✅ Не комітьте `.env` файли
- ✅ Не комітьте паролі/API ключі
- ✅ Використовуйте `.gitignore`

### Vercel:

- ✅ Environment Variables для секретів
- ✅ HTTPS автоматично увімкнено
- ✅ DDoS захист вбудований

## 📞 Підтримка

### Vercel:
- **Документація:** https://vercel.com/docs
- **Community:** https://github.com/vercel/vercel/discussions

### GitHub:
- **Документація:** https://docs.github.com
- **Support:** https://support.github.com

## ✅ Чеклист деплою

- [ ] Створено GitHub репозиторій
- [ ] Код завантажено на GitHub
- [ ] Проєкт підключено до Vercel
- [ ] Сайт задеплоєно
- [ ] Сайт відкривається за URL
- [ ] Форма відправлена (тестова заявка)
- [ ] Email активовано (клік на "Activate Form")
- [ ] Заявки приходять на toplaserua6@gmail.com
- [ ] Домен налаштовано (опціонально)

---

**Готово до запуску!** 🎉

**GitHub:** https://github.com/USERNAME/toplaser-landing  
**Vercel:** https://toplaser-landing.vercel.app  
**Email:** toplaserua6@gmail.com
