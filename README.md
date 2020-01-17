# #thelazyblog

## THE CAPISTRANO HAS BEEN MOVED FROM THE CHEF REPO TO HERE

The capistrano has been moved from the [chef repo](https://github.com/darienjonathan/thelazyblog-chef) to here.  
The reasoning of this move is to enable Capistrano to run `rake precompile:assets` locally, which requires Capsitrano to reside in the main repository.  
  
The explanation about capistrano and its usage will be written here to show the readers about how to use the capistrano, and the ones on the [chef repo](https://github.com/darienjonathan/thelazyblog-chef) will be be kept as it is, to give readers overall knowledge about provisioning and deployment.

## Introduction
`thelazyblog` is a simple blog platform written with Ruby on Rails. It is used to generate http://darienjonathan.com.

This blog platform has basic feature for users to post writings (explained below), and as the blog owner, this platform provides an admin page to write and manage the blog contents.

## Table of Contents
* [Requirements](#requirements)
* [Supporting Tools](#supporting-tools)
* [Installation](#installation)
* [Environment Variables](#environment-variables)
* [Admin - Username and Password](#admin---username-and-password)
* [Writing Blogpost](#writing-blogpost)
    * [Writing Blog Content](#writing-blog-content)
        * [Titles](#titles)
        * [Content Images](#content-images)
        * [Subtopics](#subtopics)
        * [Languages](#languages)
        * [Other Provided Classes](#other-provided-classes)
    * [Content Images](#content-images)
    * [Header Images](#header-images)
    * [Signature](#signature)
* [Capistrano](#capistrano)
    * [Capistrano Installation](#capistrano-installation)
    * [Settings](#settings)
* [References](#references)

## Requirements
You need to have these installed (with listed version or newer ones) in your machine to run this blog:
* Ruby: 2.4.1
* Nginx: 1.10.3
* NodeJS: 6.11.3
* Rails: 5.1.2


## Supporting Tools
* ActiveAdmin: admin page
* minimagick: to save images to database, to display images
* Carrierwave: to upload files (images, in this case)
* Dotenv: to manage environment variables
* Draper: to manage the presentation layer (instead of using helpers)

## Installation
If you want to start from zero (i.e. to setup an empty server to be able to run this app), see [chef branch](https://github.com/darienjonathan/thelazyblog-chef). If you already have the necessary environment to run rails-based app:
1. `git clone https://github.com/darienjonathan/thelazyblog.git`
2. `cd thelazyblog`
3. `bundle install --path=vendor/bundler`
4. `bundle exec rake db:create db:migrate db:seed`
5. `bundle exec rake assets:precompile`

And you’re good to go!

## Environment Variables
look at `.env.example` and provide the appropriate values for your environment.

## Admin - Username and Password
If you’re in a development environment, you can use the default account provided by activeadmin gem:
`admin@example.com / password`
If you’re in a production environment, you need to specify it by yourself:
1. ssh to your server
2. `cd /path/to/blog/dir`
3. enter rails console (`RAILS_ENV=production rbenv exec bundle exec rails c`)
4. Enter your desired account credentials to `AdminUser` model (i.e. `AdminUser.create(email: "admin@example.com", password: "password")`)

## Writing Blogpost
Aside of basic text for the writing, the supported features:
* hero (header-image) based title, or the text-only usual ones
* header-based subtopics, or the text-only usual ones
* images
* three language support: indonesian - id, english - en, and japanese - jp, if you want to write a post in these languages.

### Writing Blog Content
a paragraph is enclosed by a `div` element with `content` class with it:
```html
<div class="content">
First Paragraph
</div>

<div class="content">
Second Paragraph
</div>
```

#### Titles
you can simply specify the title in the form, or if you’re using header images for your title, you can specify it on its caption.

#### Content Images
After you upload content image(s) for a particular blogpost, you can add it to your writing by adding `image[n]`, with `n` is the order of the image for that blogpost.
Let’s say you have uploaded image A and B, and you want to display it on your post, then you should write `image[0]` to display image A, and `image[1]` to display image B.

#### Subtopics
a subtopic is enclosed by a `p` element with `lead` class with it:
```html
<p class="lead">Subtopic</p>
```
you can also use header images for your subtopic, and you can specify it on its caption. It is similar to how you would display an image to your blogpost - just changing the word `image` to `header`.
After you upload non-title header(s) for a particular blogpost, you can add it to your writing by adding `header[n]`.
Let’s say you have uploaded non-title headers A and B, and you want to display it on your post, then you should write `header[0]` to display header A, and `header[1]` to display header B.

#### Languages
if you want to write blogs with multiple languages, you should:
* check the appropriate language checkboxes at the bottom of the form
* write your language-specific writing in any element, with additional class corresponding to your specified language (`en`, `id`, or `jp`).
Example:
```html
<p class="lead en">Subtopic</p>
<p class="lead id">Subtopik</p>
<p class="lead jp">サブトピック</p>

<p class"content en">English content</p>
<p class"content id">Konten Bahasa Indonesia</p>
<p class"content jp">日本語の内容</p>
```
By doing that, whenever the language link on the top of the page is clicked, only the corresponding content will be showed (the other will be hidden). i.e. if the “日本語” link is clicked, all elements with `en` and `id` on its class will be hidden.
Element without any language class on it will always be shown regardless of the selected language.

#### Other Provided Classes
usage: add below classname to the class attribute of your specified element.
i.e. 
```html
<div class=“center”>This text is centered</div>
```

* bold: to **bold** a text. i.e. `<span class=“bold”>`**this is a bold text**`</span>`
* italic: to *italic* a text. i.e. `<span class=“italic”>`*this is an italic text*`</span>``
* underline: to underline a text. i.e. `<span class=“underline”>`this is an underlined text`</span>`
* signature: to __*bold&italic*__ a text `<span class=“signature”>`this text is both bold and italic`</span>`
* center: to have a text to be center-aligned
* justify: to have a text to be justify-aligned

### Content Images
You can upload images that goes into the the content (not as header) by using the “Content Image” tab in the admin page.
* You should specify to which blog this image belongs.
* you can add a caption to the image.
* You can also choose the size of the image by choosing from the radio button (small or normal).
    * Normal ones takes full width of the page
    * The small ones is fixed on height (300px - around 50% of smartphones or 30-40% of desktops)
The order of the image upload is considered in your blogpost - `image[0]` will display the first uploaded image to the particular blog, `image[1]` will display the second image, and so on.

### Header Images
You can upload images that goes into the header (subtopics or titles) by using the “Header Image’ tab in the admin page.
* You should specify to which blog this header image belongs.
* You can assign the header image as your blog’s title. **You can only (and should only) specify one header image to be specified as a title per blog!** This platform isn’t built to deal with more than one titles per blog.
* You can add a caption to the image. If you add a caption to the image which serves as a title, the title of the blog becomes the caption.
* For headers specified as title, you can specify the positioning of the image with CSS syntax of `background-position`. Any invalid entries will be treated as `center center`.
The order of the header upload is considered in your blogpost - `header[0]` will display the first uploaded non-title header to the particular blog, `header[1]` will display the second non-title header, and so on.

### Signature
At the end of each blog, there’s a signature phrase. Since it does not change in every blogpost, I’m not planning to manage it in admin. You can change the content in `app/views/partials/_blog_footer.html.erb`.

## References
* ActiveAdmin: [Active Admin | The administration framework for Ruby on Rails](https://www.activeadmin.info/)
* Rails: [Ruby on Rails Guides](http://guides.rubyonrails.org/)
* dotenv: [Dotenv](https://github.com/bkeepers/dotenv)
* Ruby installation with rbenv and ruby-build: [Installing Ruby with Rbenv - Octopress](http://octopress.org/docs/setup/rbenv/)
* Basic rake/rails tasks: [The Rails Command Line — Ruby on Rails Guides](http://guides.rubyonrails.org/command_line.html)
* CSS Background-position property: [CSS background-position property](https://www.w3schools.com/cssref/pr_background-position.asp)
* Carrierwave: [GitHub - carrierwaveuploader/carrierwave: Classier solution for file uploads for Rails, Sinatra and other Ruby web frameworks](https://github.com/carrierwaveuploader/carrierwave)
* capistrano github: [GitHub - capistrano/capistrano: Remote multi-server automation tool](https://github.com/capistrano/capistrano)
* capistrano puma github: [GitHub - seuros/capistrano-puma: Puma integration for Capistrano](https://github.com/seuros/capistrano-puma)
  * example: [Deploy your code with Capistrano  •  Beanstalk Guides](http://guides.beanstalkapp.com/deployments/deploy-with-capistrano.html)
