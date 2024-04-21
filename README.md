Backend with JWT and Devise Authentification for a NextJs Application connected to a MongoDB database. 

## Installation of MongoDB (using Mongoid and Atlas)
- [Atlas Documentation for getting started & Creating an account](https://www.mongodb.com/docs/atlas/getting-started/)
- [Mongoid Documentation](https://docs.mongodb.com/mongoid/current/)

## Installation of mongoid gem
Inside of the gemfile add the following line:
```ruby
gem 'mongoid' # do not specify a version to get the latest compatible version
```
Then run the following command:
```bash
bundle install
```
Then run the following command to generate the mongoid.yml file:
```bash
rails g mongoid:config
```

This will generate the necessary configuration file for mongoid in the config folder.

We edit the mongoid.yml file to include the following:
```yml
development:
  clients:
    default:
      uri: mongodb+srv://<username>:<password>@<serverNameReference>.mongodb.net/<ClusterName>?retryWrites=true&w=majority
      options:
        server_selection_timeout: 30
  options:
    raise_not_found_error: true

```
This is the connection string to the MongoDB Atlas database. Be sure to replace the values between the <> with your own values.




