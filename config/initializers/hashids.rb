if defined? Hashid::Rails
  Hashid::Rails.configure do |config|
    config.salt = 'some secret'
    config.min_hash_length = 8
    
    # This is only needed since we want to maintain the same keys
    # as in pre 1.0 version
    # ref: https://github.com/jcypret/hashid-rails/blob/daa14d9e2d7897b7606a1bb01c955b2522fff45f/README.md#upgrading-from-pre-10
    config.sign_hashids = ENV['SIGN_HASHIDS']=='yes'
  end
end