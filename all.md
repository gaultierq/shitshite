
# run a postgres container
```sh
docker run \
-d \
-e POSTGRES_USER=docker \
-e POSTGRES_PASSWORD=docker \
-e POSTGRES_DB=docker \
-v my_dbdata:/var/lib/postgresql/data \
library/postgres
```

# is port open ?
```sh
nmap -p 80 example.com
```

# list of iptable rules
`iptables -L`

# port opened on local machine
`netstat --inet -npl`

# nohup a script and redirect stderr to stdout
`nohup /script.sh >> ~/script.log 2>&1 &`


# image digests
`docker images --digests`

# extract a dir to its own repo
```sh
git filter-branch --force --index-filter \
  'git rm -r --cached --ignore-unmatch mobile' \
  --prune-empty --tag-name-filter cat -- --all


git filter-branch \
    --tree-filter "find . -type f -not -wholename './mobile/admin/*' -delete" --prune-empty --tag-name-filter HEAD

```

# let android connect to the packager again
`adb reverse tcp:8081 tcp:8081`

# local network devices
`arp -a`

# compare 2 git branches over 1 file
`git diff mybranch..master -- myfile.css`


# postgres (TODO: cleanup)
```sh
sudo -u postgres psql /////// psql -U postgres
postgres=# create database mydb;
postgres=# create user myuser with encrypted password 'mypass';
postgres=# grant all privileges on database mydb to myuser;

list databases ( and owners): \l
priviledges on a specific db: \z myTable
list of roles (and their priviledges): \du


list users: \du
drop user mobapi;

create user
create user mobapi with password 'test_db_password’;

create database:
create database mobapi;
create database mobapi_development owner mobapi;

list databases:
\l

grant privileges: grant all privileges on database mobapi to mobapi;

grant all privileges on database blacksheep to blacksheep;

make rails db:reset work:
psql -U postgres
ALTER USER mobapi CREATEDB;

GRANT CONNECT ON DATABASE blacksheep TO blacksheep;

REVOKE ALL ON DATABASE blacksheep FROM public;



CREATE ROLE viewer;
CREATE ROLE editor;
CREATE ROLE admin;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO viewer;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO viewer;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT,INSERT,UPDATE ON TABLES TO editor;
```

# expand a json
`cat minified.json| python -m json.tool > expanded.json`

# search git history
`git log -Spassword`


# is there any process on my machine currently listening to port 5432
`lsof -n -i:5432 | grep LISTEN`


# all white pixels to transparent
convert ezgif-2-896e174bf4f9.png -fuzz 50% -transparent white output.png

# crop transparent pixels on the side
convert input.png -trim +repage output.png
