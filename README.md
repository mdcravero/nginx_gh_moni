# CI/CD sobre Github Actions 

En este proyecto se realizó una automatización con Github Actions, para que al realizar un push sobre este repositorio buildee un contenedor con nginx, que guardará de forma automática los cambios realizados sobre el index.html ubicaco en:

```
files
    ├── index.html

```

También de forma automática se desplegará dicho proyecto sobre heroku.

Cabe destacar que se deben establecer para este ejemplo, obteniendo el api_key desde heroku, los siguientes secrets sobre github actios:

```
email: ${{ secrets.USER_EMAIL }}
api_key: ${{ secrets.HEROKU_KEY }}
app_name: ${{ secrets.HEROKU_PROJET }}

```

