
run

``` sh
grep '/usr/share/glib-2.0/schemas' /var/lib/dpkg/triggers/*
```

show

``` sh
/var/lib/dpkg/triggers/File:/usr/share/glib-2.0/schemas libglib2.0-0t64:amd64
grep: /var/lib/dpkg/triggers/Lock: Permission denied
```

File: `/var/lib/dpkg/triggers/File`

Have a line: `/usr/share/glib-2.0/schemas libglib2.0-0t64:amd64`


run

``` sh
ls /var/lib/dpkg/info/libglib2.0-0t64*
```

show

```
/var/lib/dpkg/info/libglib2.0-0t64:amd64.list
/var/lib/dpkg/info/libglib2.0-0t64:amd64.md5sums
/var/lib/dpkg/info/libglib2.0-0t64:amd64.postinst
/var/lib/dpkg/info/libglib2.0-0t64:amd64.postrm
/var/lib/dpkg/info/libglib2.0-0t64:amd64.preinst
/var/lib/dpkg/info/libglib2.0-0t64:amd64.shlibs
/var/lib/dpkg/info/libglib2.0-0t64:amd64.symbols
/var/lib/dpkg/info/libglib2.0-0t64:amd64.triggers
```

you can check

* /var/lib/dpkg/info/libglib2.0-0t64:amd64.postinst
* /var/lib/dpkg/info/libglib2.0-0t64:amd64.triggers


``` sh
grep 'glib-compile-schemas' /var/lib/dpkg/info/libglib2.0-0t64:amd64.postinst
```

``` sh
grep 'glib-compile-schemas' /var/lib/dpkg/info/*
```
