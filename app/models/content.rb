class Content
  include Mongoid::Document
  include Mongoid::Timestamps
  field :claims, type: Array
  field :model, type: String
end
