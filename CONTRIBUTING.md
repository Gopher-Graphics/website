# Contributing

If you have any questions, feel free to open an [issue](/Gopher-Graphics/website/issues) and ping @arbormoss or @david-callender.

Make sure to update the [CHANGELOG.md](CHANGELOG.md) after you make your changes.

## Setup

Clone repo and install dependencies
```bash
git clone git@github.com:Gopher-Graphics/website.git
cd website
npm i
```

Serve development server to [http://127.0.0.1:1111](http://127.0.0.1:1111)
```bash
npm run serve
```

Do your work on a branch named `<your name or username>/<topic>`, like `arbor/officer-cards`.

## Changing Text Content

If you only want to change text content on the site, it is safe to edit the Markdown files in `website/content/`.
Each markdown file needs a header that starts and ends with a line of `+++`.
Inside the header, the title of the article is set with `title = "<page title>"`, and the _weight_ is set with `weight = <page weight>`.
The _weight_ determines what pages show up first, with lower numbers appearing before higher numbers.

Here is an example from the Membership page:
```
+++
title = "Membership"
weight = 3
+++
```

All of the text below the header will be shown as [markdown](https://markdown.org/basics) on the page.

There are more options in the [Zola documentation](https://www.getzola.org/documentation/content/page/), but they shouldn't be needed for most pages on this site.

## File Paths and URLs

Files named `_index.md` appear at the path of their directory (`website/content/blog/_index.md` would appear at `https://gopher.graphics/blog`).
Other files will have a path that ends with their name (`website/content/blog/post1.md` would appear at `https://gopher.graphics/blog/post1`).

The path on the website will start _after_ the path to the `website/content/` directory, so `website/content/` will effectively get replaced with `https://gopher.graphics/`.
The `.md` file extension is ignored.

## Changing Page Templates and Styles

If you want to help with parts of the site other than text content, make yourself familiar with Zola and Tailwind:
- Read the [Zola Overview](https://www.getzola.org/documentation/getting-started/overview/) if you are unfamiliar with Zola.
- Read the [Tailwind Styling with Utility Classes](https://tailwindcss.com/docs/styling-with-utility-classes) if you are unfamiliar with Tailwind.
- If you will be working with Zola templates, read the [Tera](https://keats.github.io/tera/) (Zola's templating engine) getting started docs.
