# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_kdqol_session',
  :secret      => 'b8e2ae48132609466345dcb8eea610d4a73b97a5f556025a284cc0a010eac00b999b2f7dc233f61ea7256884deaee9318dc31e1490ddec1137ae8d5442051a7e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
