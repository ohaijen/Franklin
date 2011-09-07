# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_franklin_session',
  :secret      => 'e4bec4117c940bb7067626e3d44c0172adce26d3814d7f064891a7b0e185ccbfe61c16622bcc6f4476147870fb6f1f456ac670d563ca840225192127e7c778c1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
