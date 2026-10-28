+++
title = "Ray Tracing 2"
date = 2026-10-28
description = "October 28, 2026. Advanced rendering techniques and more examples."
template = "article.html"
+++
_October 28, 2026_

This is an upcoming workshop covering more advanced rendering techniques.

This workshop is interactive, and you will need a browser that supports WebGPU.

The interactive site is [here](https://wade7wastaken.github.io/webgpu-raytracer/). See the debugging section below if the site is not working.

Windows: Chromium-based browsers, like Chromium and Google Chrome are preferred,
Firefox will work, but will be slower.

MacOS (Apple Silicon): Extremely device dependent. Try Safari and Chromium-based and pick the more performant one.

MacOS (Intel/Other): Chromium-based browsers are best,
Firefox will work, but will be slower.

Linux: Chromium-based browsers are the only option.
Make sure to enable "enable-unsafe-webgpu", "enable-gpu-rasterization", and "ignore-gpu-blocklist" in `about:flags`.

You can check if your browser is supported at [webgpureport.org](https://webgpureport.org).

### Debugging
* Try a different browser. It is difficult to test all browser/os combinations, so something we report as working might not work for you.
* Check the browser console for error messages.
* Some Linux browsers report the incorrect texture format. If there is an error about texture formats, run `localStorage.setItem("presentationFormat", "bgra8unorm")`.
