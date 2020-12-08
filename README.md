# Faegermart Docker environment for development

## Useful shell functions

The following commands are useful to add to your `.zshrc` or other shell configuration.

```
# Run xavier environment commands globally
alias faegermart='~/FaegerMart/FaegerMart-docker/faegermart.sh'

#Run composer inside the PHP container
composer () {
    docker exec -it faegermart-docker_php_1 composer $@
}

# Run an artisan command inside the PHP container
artisan () {
    docker exec -it faegermart-docker_php_1 php artisan $@
}
```