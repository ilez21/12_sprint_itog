# Parcel Tracker

Приложение для отслеживания посылок с автоматическим CI/CD.

## Настройка GitHub Secrets

Для работы автоматической публикации в DockerHub добавьте в Settings → Secrets and variables → Actions:

- `DOCKERHUB_USERNAME` - ваш логин DockerHub
- `DOCKERHUB_TOKEN` - токен доступа из DockerHub

## Использование

1. Создайте репозиторий на GitHub
2. Добавьте remote: `git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git`
3. Запушьте код: `git push -u origin main`
4. Создайте тег: `git tag v1.0.0 && git push origin v1.0.0`

Workflow автоматически запустит тесты и опубликует образ в DockerHub.
