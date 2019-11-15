class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :work_email, :gmail_email
end
