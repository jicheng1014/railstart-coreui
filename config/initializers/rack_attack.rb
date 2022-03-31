# https://github.com/rack/rack-attack/
Rack::Attack.enabled = false
Rack::Attack.throttled_response_retry_after_header = true


# Provided that trusted users use an HTTP request header named APIKey
# Rack::Attack.safelist("mark any authenticated access safe") do |request|
#   # Requests are allowed if the return value is truthy
#   request.env["HTTP_APIKEY"] == "secret-string"
# end

# Always allow requests from localhost
# (blocklist & throttles are skipped)
Rack::Attack.safelist('allow from localhost') do |req|
  # Requests are allowed if the return value is truthy
  '127.0.0.1' == req.ip || '::1' == req.ip
end


# Block suspicious requests for '/etc/password' or wordpress specific paths.
# After 3 blocked requests in 10 minutes, block all requests from that IP for 5 minutes.
# Rack::Attack.blocklist('fail2ban pentesters') do |req|
#   # `filter` returns truthy value if request fails, or if it's from a previously banned IP
#   # so the request is blocked
#   Rack::Attack::Fail2Ban.filter("pentesters-#{req.ip}", maxretry: 3, findtime: 10.minutes, bantime: 5.minutes) do
#     # The count for the IP is incremented if the return value is truthy
#     CGI.unescape(req.query_string) =~ %r{/etc/passwd} ||
#     req.path.include?('/etc/passwd') ||
#     req.path.include?('wp-admin') ||
#     req.path.include?('wp-login')
#   end
# end
# 
#

# Rack::Attack.throttle("requests by ip", limit: 5, period: 2) do |request|
#   request.ip
# end

# # Throttle login attempts for a given email parameter to 6 reqs/minute
# # Return the *normalized* email as a discriminator on POST /login requests
# Rack::Attack.throttle('limit logins per email', limit: 6, period: 60) do |req|
#   if req.path == '/login' && req.post?
#     # Normalize the email, using the same logic as your authentication process, to
#     # protect against rate limit bypasses.
#     req.params['email'].to_s.downcase.gsub(/\s+/, "")
#   end
# end

# # You can also set a limit and period using a proc. For instance, after
# # Rack::Auth::Basic has authenticated the user:
# limit_proc = proc { |req| req.env["REMOTE_USER"] == "admin" ? 100 : 1 }
# period_proc = proc { |req| req.env["REMOTE_USER"] == "admin" ? 1 : 60 }

# Rack::Attack.throttle('request per ip', limit: limit_proc, period: period_proc) do |request|
#   request.ip
# end
# 
# Rack::Attack.blocklisted_responder = lambda do |request|
#   # Using 503 because it may make attacker think that they have successfully
#   # DOSed the site. Rack::Attack returns 403 for blocklists by default
#   [ 503, {}, ['Blocked']]
# end

# Rack::Attack.throttled_responder = lambda do |request|
#   # NB: you have access to the name and other data about the matched throttle
#   #  request.env['rack.attack.matched'],
#   #  request.env['rack.attack.match_type'],
#   #  request.env['rack.attack.match_data'],
#   #  request.env['rack.attack.match_discriminator']

#   # Using 503 because it may make attacker think that they have successfully
#   # DOSed the site. Rack::Attack returns 429 for throttling by default
#   [ 503, {}, ["Server Error\n"]]
# end