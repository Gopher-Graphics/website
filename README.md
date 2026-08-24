# Gopher Graphics Website

[gopher.graphics](https://gopher.graphics)

We are a student organization at the University of Minnesota Twin Cities.

We have regular meetings and workshops where we chat about computer graphics like shaders, 3D modeling, VR, and animation.
We are open to students of a variety of skill levels and appreciate when people are enthusiastic and genuine.
We also have a demo party at the end of each semester where students can show off their work!

## I Want to Join

That's awesome!

The best way to get involved is to come to one of our events, available on our [events calendar](https://gopher.graphics/events).
If you want to become a member, more information can be found [here](https://gopher.graphics/join).

## I Want to Help

If you have any questions, feel free to open an [issue](/Gopher-Graphics/website/issues) and ping @arbormoss or @david-callender.

- [Zola](https://www.getzola.org/) is used to generate HTML pages from Markdown and [Tera](https://keats.github.io/tera/) templates.
- [Tailwind](https://tailwindcss.com/) is used to style the site using [utility classes](https://tailwindcss.com/docs/styling-with-utility-classes).

[CHANGELOG.md](CHANGELOG.md) has a history of changes to the site.
Make sure to update it when you make changes.

Do your work on a branch named `<your name or username>/<topic>`, like `arbor/officer-cards`.

### Text Content

Text content is in the `content/` directory.

Each markdown file needs a header that starts and ends with a line of `+++`.
Inside the header, the title of the article is set with `title = "<page title>"`, and the ordering weight is set with `weight = <page weight>`.

The rest of the file is Markdown.

### Resources

- [Zola Overview](https://www.getzola.org/documentation/getting-started/overview/)
- [Tailwind Styling with Utility Classes](https://tailwindcss.com/docs/styling-with-utility-classes)
- [Tera](https://keats.github.io/tera/) (Zola's templating engine)

## Tasks

These are tasks written for the [xc](https://xcfile.dev/) task runner.
They are the same ones used by the build system/CI.

Either install `xc` and run `xc <task>` or just copy them into your shell.

### install

Make sure to run this once after cloning the site to install npm dependancies.

```
npm install
```

### serve

Serve development server to [http://127.0.0.1:1111](http://127.0.0.1:1111)
(will use higher port if 1111 is in use, starting at 1024).

```sh
zola serve &                    \
    npx @tailwindcss/cli        \
    -i ./static/pretailwind.css \
    -o ./public/style.css       \
    --watch

wait
```

### build 

Build the site into the `public/` directory.

```sh
zola build
npx @tailwindcss/cli            \
    -i ./static/pretailwind.css \
    -o ./public/style.css -m
```