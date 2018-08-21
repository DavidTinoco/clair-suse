# clair-suse
Clair with (unofficial) SUSE module, dockerized.

Today, Clair doesn't support SUSE distributions, but flavio did a pull request to introduce it, and i use his code, introducing it on personal project and compile it, to, then, create a Docker Image with it.

The steps are so simply.

### Install dependeces

Clair need **go** **git** **xz** and **rpm**

~~~
apt install git rpm xz-utils golang
~~~

Then, get the clair project with go tool.

~~~
go get github.com/coreos/clair
~~~

Now add/modify the files in his [pull request](https://github.com/coreos/clair/pull/506) and compile it.

~~~
go install github.com/coreos/clair/cmd/clair
~~~

You can build the image, with the Dockerfile in this repo.

~~~
docker build -t clair-suse .
~~~

Or just use the docker-compose in this repo that uses a builded image by me.

~~~
docker-compose up -d
~~~

### Customize it

I give you a **config.yaml** to Clair, but you can edit and modify to your personal objetives, like another database to don't use in the  docker-compose.yaml

### Keep in mind

The first time you run clair with an empty database, it takes a while to fill the database.
