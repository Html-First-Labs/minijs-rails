# HTML First Rails

- HTML First Rails is a boilerplate for building simple, maintainable, [HTML First](https://html-first.com/) Rails applications.
- It's designed be new-contributor-friendly, in particular to people with little to no experience with Rails. Because of this, several of our approaches subvert "Rails best practices" in service of understandabilty.


## Getting Started

- `bundle install`
- `rails db:create`
- `rails db:migrate`
- `rails s`

### Defaults

**Assets**

- Instead of using the asset pipeline, we store our assets in the `/public` folder. 

**Styling** 

- For utility classes, we use [Static Tailwind](https://statictailwind.com/).
- We keep our default variables in `/public/stylesheets/variables.css`.
- We use tonic23.css for a small number of additional common patterns, like making forms and form inputs look nice by default, making formatted text look nice, and giving us a shimmer class to use for loading states.

**Javascript**

- We use mini.js to add frontend interactivity. This covers most use cases, such as tabs, modals, accordions, multi-selects and others.
- We also include tippy.js for tooltips and dropzone.js for file uploads.

**Partial page loads with forms and links**: 

- We use [HTMX](https://htmx.org/) to enable submitting forms or loading new content without triggering a full page reload. We use this instead of the Rails default - [Turbo](https://turbo.hotwired.dev/), because 1. It has a larger, standalone community which means better support and faster debugging and 2. It is conceptually easier to understand and learn.

**Admin**

- We include [Active Admin](https://activeadmin.info/) by default. It is one of the older admin gems, but it has incredible documentation, is still actively supported, and most importantly, we haven't found something we haven't been able to do quickly and easily with it (which hasn't been true of the other admin gems we've tried).

**Identity**

- We use devise for supporting sign in, sign up, forgot password, and other account related functionality. 

**Data models**

- The only models included by default are the user model and the admin user model




<!-- # Patterns


### Add a new route

```
# config/routes.rb
Code sample
```

```
# app/controllers/new_controller.rb
Code sample
```

```
# app/views/new_controller/index.html.erb
Code sample
```

### Check if someone is logged in


### Trigger a modal

### Build a Rails form

### Trigger a toast

### Add a new CSS file

### Add a new form


# Goodies

- Open Graph image generator


# Recommendations

- Routes File: One line per route -->