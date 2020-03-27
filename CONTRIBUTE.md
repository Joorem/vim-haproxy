# How to contribute

Thank you for reading this! :+1::tada:

## :recycle: Testing

If you have complex use cases in your HAProxy configuration and they're not
handled correctly by this plugin, feel free to open an issue (don't forget to
provide an extract of your `haproxy.cfg` and/or a screenshot).

## :rocket: Submitting changes

Any kind of participation is welcome:

* cosmetics changes
* performance optimizations
* Enhancements
* Vimscript simplifications
* etc.

The git workflow of this repository is inspired by the branching model used
by [Vincent Driessen][github-vd] and described [here][nvie-article].

1. first you need to fork this repository
1. then create a new feature branch: `git checkout -b feature-foo develop`
1. make your changes and commit them:

   ```
   git commit -m "Add a new feature Foo

   Added:
   - A new awesome feature called Foo which..."
   ```

1. you can now push your feature branch on Github: `git push -u origin feature-foo`
1. and finally open a [Pull Request][pr]!

I will create a new release for each important modifications.

## :anchor: Coding conventions

Nothing really specific, read the syntax file and try to stay coherent:

* Indentation: two spaces (soft tabs)
* Compliance with [Vint][vint] (if possible)

Thank you! :heart: :heart: :heart:

[github-vd]:https://github.com/nvie
[nvie-article]:https://nvie.com/posts/a-successful-git-branching-model/
[pr]:https://github.com/Joorem/vim-haproxy/pull/new
[vint]:https://github.com/Vimjas/vint
