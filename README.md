# Ruby on Rails Tutorial sample applicaton1211

This is the sample application for the
[*Ruby on Rails Tutorial](https://www.railstutorial.org/)
(6th Edition)
by [Michael Hart1](https://www.michaelhart1.com/).

## License

All source code in the [Ruby on Rails Tutorial](https://www.railstutorial.org/)
in available jointly under the MIT License and the Beerware License. See
[License.md](License.md)  for the details.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ gem install bundler -v 2.2.17
$ bundle _2.2.17_ config set --local without 'production'
$ bundle _2.2.17_ install
```


Next, migrate the database

```
$ rails db:migrate
```

Finally, run the testt suite to verify  that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

For more information, see the
[*Ruby on Rails Tutorial* book](https://www.railstutorial.org/book).
