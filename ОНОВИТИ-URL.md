# ⚠️ ВАЖЛИВО: Оновити URL після деплою

## Проблема

У формі зараз вказано тестовий URL:
```
https://toplaser.vercel.app/thank-you.html
```

## Що потрібно зробити

### 1️⃣ Після деплою на Vercel

Vercel дасть вам URL, наприклад:
- `https://toplaser-landing.vercel.app`
- `https://toplaser-landing-git-main-username.vercel.app`

### 2️⃣ Оновіть URL у формі

Відкрийте `index.html`, знайдіть рядок 263:

```html
<input type="hidden" name="_next" value="https://toplaser.vercel.app/thank-you.html">
```

Замініть на ваш реальний URL:

```html
<input type="hidden" name="_next" value="https://ВАШ-URL.vercel.app/thank-you.html">
```

### 3️⃣ Закомітьте зміни

```bash
git add index.html
git commit -m "Update form redirect URL"
git push
```

## Альтернатива: Власний домен

Якщо у вас є домен (наприклад, `toplaser.com`):

```html
<input type="hidden" name="_next" value="https://toplaser.com/thank-you.html">
```

## Тимчасове рішення

Поки форма не активована, можна залишити відносний шлях:

```html
<input type="hidden" name="_next" value="thank-you.html">
```

Але краще використовувати повний URL для надійності.

## Перевірка

Після оновлення:
1. Заповніть форму
2. Натисніть "Надіслати"
3. Має відкритися ваша красива сторінка подяки

---

**Не забудьте оновити URL після деплою!** 🚀
