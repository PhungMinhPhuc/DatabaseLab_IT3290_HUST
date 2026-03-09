## Week 2. SQL Lab

cd /d "E:\PostgreSQL\18\bin"
createdb -U postgres test2
pg_dump -U postgres -F p test2 > E:\Downloads //Access is denied.
pg_dump -U postgres -F p -f E:\Downloads\backup.dump test2
pg_dump -U postgres -F p -f E:\Downloads\backup.sql test2