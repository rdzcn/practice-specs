def github_username(user)
  unless user.empty?
    return user
  end

  return 'Please enter something'
end
