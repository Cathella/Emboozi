# Emboozi
This is an on-going project.

## About Project

> I enjoy reading stories and about people's life experiences. This will be a platform where people are welcome to tell their stories to the world. Tell how they built something or how they went through an experience to inspire or even to support others as well as receiving the audience they deserve.

## Database structure
```
User (Devise Model)
- email:string
- password:string
- first_name:string
- last_name:string

- has_many :stories
- has_many :comments

Story (Model)
- title:string
- body:text
- user_id:integer

- belongs_to :user
- has_many :comments

Comment (Model)
- body:text
- user_id:integer
- story_id:integer

- belongs_to :user
- belongs_to :story
```

## Project live demo
[Live demo]()

## Implemented features
- User authentication.
- User can create/edit a story.

## How to run this project

- Install Ruby.
- Install Ruby on Rails.
- Install bundle.
- Run "bundle install" inside the project  folder.
- Run "rails server" inside the project folder.
- Go to "https://localhost:3000/"

## Author

**Nakitto Catherine**
- Linkedin: [Nakitto Catherine](https://www.linkedin.com/in/nakitto-catherine2020)
- Github: [@Cathella](https://github.com/Cathella)
- Twitter: [@cathella9](https://twitter.com/cathella9)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!
Feel free to check the issues page.

## Show your support

Give a ⭐️ if you like this project!


