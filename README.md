<snippet>
  <content>
# InstagramSSS
A simple clone of Instagram web application using Ruby On Rails
- Storage: using AWS S3 to store uploaded photo.
## Installation
- Setup database info in /config/database.yml
- Config the S3 Environment variables: ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'], ENV['S3_REGION'],ENV['FOG_DIRECTORY']
- Create db: using command rake db:migrate.

## Usage
Implemented functions:
+ User registration/sign in/sign out
+ Photo feeds as home page
+ Upload a new photo, each photo can have comments
+ Comments may have #hashtag
+ Search photos by #hashtag
+ User profile page that shows user information as well as all his posted photos
+ Unit test for photo & user model, comments_controller & photos_controller
</content>
  <tabTrigger>readme</tabTrigger>
</snippet>