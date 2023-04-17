# TFClimbing

When reading the book "Training for climbing", I decided to write a simple project to keep track of my training
goals. Of course, I could have chosen just pen and paper or spreadsheet. But why not use it as an excuse to play with
Spring Boot, practice some new Java tricks, and eventually explore things that I don't use on my daily basis at work?

**To practice with fun technologies, that's the purpose of this project**.

## Starting the project

To start the project, first requirement is to have Docker and the database up and running as a container. To make this happen
just type the following docker command in the project's root directory:

```
docker compose up
```

After that, starting the project should be enough for the Flyway migrations to run and set up the whole database (tables, sequences, indexes and so on).

## Technologies

### Flyway

I'm using Flyway to manage DB scripts and the current DB state. In the way I configured the project, Flyway should always
run a `migrate` when starting up the Spring Boot app. This happens simply because I've added `flyway-core` as a dependency and
that is enough for Spring Boot to start Flyway.

More details about how to do this setup can be found under Spring Boot's [Database Initialization](https://docs.spring.io/spring-boot/docs/2.1.0.RELEASE/reference/html/howto-database-initialization.html) docs.

Another setup you will find for Flyway in this project, is the Flyway Maven plugin added in the plugins section within the `pom.xml` file.
That plugin is added so that I can use Flyway through Maven commands. Here is an example command that can be used:

```
mvn flyway:clean
```
