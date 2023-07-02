# ingress-nginx-default-backend

A default backend for ingress-nginx with nice error pages.

:warning: Since nginx returns a HTTP 405 on POST requests to an error page, any POST requests encountering an error will yield a HTTP 405 here!

You can customize it by mounting your own error pages to `/usr/share/nginx/html/custom`, the file names are as follows:

- `${status_code}.html` for a status code specific page
- `4xx.html` for all status codes from 400-499
- `5xx.html` for all status codes from 500-599

The error page priority is as follows:

- Custom status code specific page
- Custom general page (`4xx.html` or `5xx.html`)
- Default status code specific page
- Default general page

**Note: The correct HTTP status codes are only returned for status codes where a default page exists in `error_pages`**

## Page template

The error page template was designed by [dkaramazov](https://codepen.io/dkaramazov) on CodePen.
