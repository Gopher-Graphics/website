# Contributing

Clone repo and install dependencies
```bash
git clone git@github.com:Gopher-Graphics/website.git
cd website
npm i
```

Serve development server to http://127.0.0.1:1111
```bash
npm run serve
```

Do your work on a branch named `<your name or username>/<topic>`, like `arbor/officer-cards`.

If you only want to change text content on the site, it is safe to edit the Markdown files in `website/content/`.
Do not change the header that starts and ends with `+++`.

Files named `_index.md` appear at the path of their directory (`website/content/blog/_index.md` would appear at `https://gopher.graphics/blog/`).
Other files will end in their name (`website/content/blog/post1.md` would appear at `https://gopher.graphics/blog/post1`).

Otherwise, make yourself familiar with Zola and Tailwind:
- Read the [Zola Overview](https://www.getzola.org/documentation/getting-started/overview/) if you are unfamiliar with Zola.
- Read the [Tailwind Styling with Utility Classes](https://tailwindcss.com/docs/styling-with-utility-classes) if you are unfamiliar with Tailwind.
