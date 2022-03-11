# CI/CD sobre Github Actions 

En este proyecto se realizó una automatización con Github Actions, para que al hacer un push sobre este repositorio buildee un contenedor con nginx, que guardará de forma automática los cambios realizados sobre el index.html ubicaco en:

```
files
    ├── index.html

```

También de forma automática se desplegará dicho proyecto sobre heroku.

Cabe destacar que se deben establecer para este ejemplo, los siguientes secrets sobre github actions:

```
email: ${{ secrets.USER_EMAIL }} #Cuenta de Heroku
api_key: ${{ secrets.HEROKU_KEY }} #Api Key de Heroku
app_name: ${{ secrets.HEROKU_PROJET }} #Nombre de la APP

```

