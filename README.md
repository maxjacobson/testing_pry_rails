try:


```
bin/rails console
```

Run some commands

in another tab, run

```
tail -f log/console.log
```

commands should be logged

then try this command:

```
"hello".revers<TAB>
```

and it will fail with a surprising irb error.

* * *

Also, try this command:

```
bundle exec pry
```

tab completion doesn't work, but it doesn't break either. So, that's great.

So the issue is probably that pry-rails is loading irb somehow.
