railstart-coreui
------

Backend admin dashboard management system based on [Bootstrap 5](https://getbootstrap.com/) and [Coreui](https://coreui.io/) and [Rails 7](https://rubyonrails.org/)

[![License](http://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://github.com/tianlu1677/railstart-coreui/blob/master/LICENSE)

Preview: http://localhost:4000/admin
![image](https://user-images.githubusercontent.com/2594920/160802538-7ba6dcdb-e644-4331-b2a6-83a22dc48949.png)


[Coreui](https://coreui.io/) is open source template based on [Bootstrap 5](https://getbootstrap.com/), you can download it from network, I integrate it with Rails 7.

It will integrate various functions and plugins, mainly for easy writing code.

### Dependency:

- [Ruby 3.0.0](https://www.ruby-lang.org/)

- [Rails 7](https://rubyonrails.org/)

- [PostgreSQL](https://www.postgresql.org/)

- [Redis](https://redis.io/)

- [ImageMagick](https://imagemagick.org/index.php)

Please make sure that Redis and PostgreSQL server is running.

### Features

- Beautiful style based on [Coreui](https://coreui.io)
- Based on [Rails 7](https://rubyonrails.org/) and [hotwired turbo](https://turbo.hotwired.dev/) and [stimulus](https://stimulus.hotwired.dev/)
- [Devise](https://github.com/heartcombo/devise) for authentication
- Pagination(comming soon)
- Charts with [chartjs](https://www.chartjs.org/) 
- Icons: [Bootstrap Icons](https://icons.getbootstrap.com/) and [Coreui icon](https://icons.coreui.io/icons/) and [FontAwesome](https://fontawesome.com/)
- Text Editor: [Quill](https://www.quill.org/) and [TinyMCE](https://www.tiny.cloud/)
- Breadcrumbs
- Integrate [Action Text](https://guides.rubyonrails.org/action_text_overview.html)
- Support frontend website seo
- Custom error page
- Support API(comming soon)
- Integrate [tailwind](https://tailwindcss.com/) for frontend
- Integrate [Simple-DataTables](https://github.com/fiduswriter/Simple-DataTables)
- Support aliyun, qiniu cloud storage(comming soon)
- Move stimulus from webpacker to vite
- Admin user can upload own avatar

### Included gems

- [rails_admin](https://github.com/railsadminteam/rails_admin)
- [sidekiq](https://github.com/mperham/sidekiq)
- [meta_tags](https://github.com/kpumuk/meta-tags)
- [groupdate](https://github.com/ankane/groupdate)
- [pghero](https://github.com/ankane/pghero)
- [devise](https://github.com/heartcombo/devise)
- [dotenv-rails](https://github.com/bkeepers/dotenv)
- [image_processing](https://github.com/janko/image_processing)
- [sprockets-rails](https://github.com/rails/sprockets-rails)
- [turbo-rails](https://github.com/hotwired/turbo-rails)
- [stimulus-rails](https://github.com/hotwired/stimulus-rails)
- [jbuilder](https://github.com/rails/jbuilder)
- [vite_ruby](https://github.com/ElMassimo/vite_ruby)
- [pagy](#)
- [sidekiq](#)
- [sidekiq-scheduler](#)


### Installation

Install your system softwares first.

#### Mac OS X

```
brew install imagemagick vips redis postgresql gs
```

#### Ubuntu

```
$ sudo apt-get install postgresql-14 redis-server imagemagick ghostscript libvips
```

Then follow this link to install Ruby and Rails

[https://rails.new/](https://rails.new/)

Or install [rvm](https://rvm.io/) and then install Rails manually.

### Running

Running the app finally

```bash
git clone git@github.com:tianlu1677/railstart-coreui.git
cd railstart-coreui
bundle install
cp .env.template .env.development
# and then change .env configurations for you
rails db:migrate
rails db:seed
rails server
```

It will start at http://localhost:4000

### Deployment

```bash
# change .env file configurations and upload nginx config

# then

```


## License

Copyright (c) 2022 tianlu1677

Released under the MIT license:

- [www.opensource.org/licenses/MIT](http://www.opensource.org/licenses/MIT)
