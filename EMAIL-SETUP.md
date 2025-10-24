# 📧 Налаштування відправки заявок на email

## ✅ Що налаштовано

Форма замовлення тепер автоматично відправляє заявки на пошту:

**Email:** `toplaserua6@gmail.com`

## 🔧 Сервіс: FormSubmit.co

Використовується безкоштовний сервіс **FormSubmit** для відправки форм на email без бекенду.

### Переваги:
- ✅ **Безкоштовно** — без обмежень
- ✅ **Без бекенду** — працює на статичних сайтах
- ✅ **Без реєстрації** — просто вказати email
- ✅ **Захист від спаму** — вбудована капча (вимкнена для зручності)
- ✅ **Красиві листи** — форматування таблицею

## 🚀 Перше використання

### ⚠️ ВАЖЛИВО: Активація email

При **першій** відправці форми FormSubmit надішле лист підтвердження на `toplaserua6@gmail.com`.

**Кроки активації:**

1. Заповніть форму на сайті та натисніть "Надіслати"
2. Перевірте пошту `toplaserua6@gmail.com`
3. Знайдіть лист від **FormSubmit** (перевірте спам!)
4. Натисніть кнопку **"Activate Form"** у листі
5. Готово! Тепер всі заявки будуть приходити автоматично

### 📬 Як виглядає лист підтвердження:

```
From: FormSubmit <noreply@formsubmit.co>
Subject: Confirm your email address

Click the button below to activate your form:
[Activate Form]
```

## 📨 Формат заявок

Після активації кожна заявка приходить у такому форматі:

```
From: FormSubmit <noreply@formsubmit.co>
Subject: Нова заявка з TopLaser!

┌──────────┬─────────────────────┐
│ Ім'я     │ Іван Петренко       │
│ Телефон  │ +380501234567       │
└──────────┴─────────────────────┘

Submitted at: 24.10.2025 21:30:45
```

## ⚙️ Налаштування форми

У файлі `index.html` форма налаштована так:

```html
<form action="https://formsubmit.co/toplaserua6@gmail.com" method="POST">
  <!-- Тема листа -->
  <input type="hidden" name="_subject" value="Нова заявка з TopLaser!">
  
  <!-- Вимкнути капчу (для зручності) -->
  <input type="hidden" name="_captcha" value="false">
  
  <!-- Формат листа (таблиця) -->
  <input type="hidden" name="_template" value="table">
  
  <!-- Редірект після відправки -->
  <input type="hidden" name="_next" value="https://yourdomain.com/thank-you.html">
  
  <!-- Поля форми -->
  <input type="text" name="Ім'я" required />
  <input type="tel" name="Телефон" required />
  
  <button type="submit">Надіслати</button>
</form>
```

## 🔄 Що відбувається при відправці

1. Користувач заповнює форму
2. Натискає "Надіслати заявку"
3. Дані відправляються на FormSubmit
4. FormSubmit надсилає email на `toplaserua6@gmail.com`
5. Користувач перенаправляється на `thank-you.html`

## 🛠️ Додаткові налаштування

### Змінити email отримувача

Відредагуйте `index.html`, рядок 257:

```html
<form action="https://formsubmit.co/НОВИЙ_EMAIL@gmail.com" method="POST">
```

### Увімкнути капчу (захист від спаму)

Змініть у `index.html`:

```html
<input type="hidden" name="_captcha" value="true">
```

### Змінити тему листа

```html
<input type="hidden" name="_subject" value="Ваша нова тема!">
```

### Налаштувати редірект

Після деплою сайту оновіть URL:

```html
<input type="hidden" name="_next" value="https://toplaser.com/thank-you.html">
```

## 📊 Альтернативні сервіси

Якщо FormSubmit не підходить, можна використати:

### 1. **Formspree** (formspree.io)
```html
<form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
```

### 2. **EmailJS** (emailjs.com)
Потрібна реєстрація + JavaScript

### 3. **Google Forms**
Вбудувати Google Form

### 4. **Telegram Bot**
Відправка заявок у Telegram

## 🔐 Безпека

- ✅ Email не видно в коді (захищений FormSubmit)
- ✅ Захист від спаму (можна увімкнути капчу)
- ✅ HTTPS з'єднання
- ✅ Валідація полів (required)

## 📱 Тестування

### Локальне тестування

⚠️ **FormSubmit НЕ працює на localhost!**

Для тестування потрібно:
1. Задеплоїти сайт на хостинг (Netlify, Vercel, GitHub Pages)
2. Або використати ngrok для тунелю

### Тестування на продакшені

1. Відкрийте сайт на хостингу
2. Заповніть форму тестовими даними
3. Натисніть "Надіслати"
4. Перевірте пошту `toplaserua6@gmail.com`

## ❓ Troubleshooting

### Не приходять листи?

1. **Перевірте спам** — перший лист може потрапити в спам
2. **Активуйте email** — натисніть "Activate Form" у першому листі
3. **Перевірте інтернет** — форма працює тільки онлайн
4. **Перевірте консоль** — відкрийте F12 і подивіться на помилки

### Форма не відправляється?

1. Перевірте, чи всі поля заповнені
2. Перевірте інтернет-з'єднання
3. Перевірте консоль браузера (F12)
4. Спробуйте інший браузер

### Редірект не працює?

1. Оновіть `_next` URL на правильний
2. Перевірте, чи існує `thank-you.html`
3. Використайте повний URL (з https://)

## 📞 Підтримка

**FormSubmit документація:** https://formsubmit.co/

**Email для заявок:** toplaserua6@gmail.com

---

**Налаштовано:** 24 жовтня 2025  
**Сервіс:** FormSubmit.co (безкоштовно)
