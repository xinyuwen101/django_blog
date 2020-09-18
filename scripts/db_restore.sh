docker cp django_blog.sql db_0:/
docker exec db_0 sh -c 'exec psql -U postgres -d postgres < django_blog.sql'    