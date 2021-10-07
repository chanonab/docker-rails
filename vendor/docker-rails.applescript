tell application "iTerm"
	activate
	set win to (create window with default profile)
	tell current window
		tell current session
			write text "docker-machine start"
			write text "docker-machine ls"
			write text "cd ~/Documents/ruby/docker-rails"
			write text "direnv allow"
			write text "docker-compose down; docker system prune -f; docker-compose up --build;"
		end tell
	end tell
	tell current window
		create tab with default profile
		tell current session
			write text "cd ~/Documents/ruby/docker-rails"
			write text "docker-compose exec web bundle exec sh"
		end tell
	end tell
	tell current window
		create tab with default profile
		tell current session
			write text "cd ~/Documents/ruby/docker-rails"
			write text "docker attach web"
		end tell
	end tell
	tell current window
		create tab with default profile
		tell current session
			write text "cd ~/Documents/ruby/docker-rails"
			write text "docker-compose exec web bundle exec rails c"
		end tell
	end tell
	tell current window
		create tab with default profile
		tell current session
			write text "cd ~/Documents/ruby/docker-rails"
			write text "docker-compose exec web bundle exec slim-lint"
		end tell
	end tell
	tell current window
		create tab with default profile
		tell current session
			write text "cd ~/Documents/ruby/docker-rails"
			write text "docker-compose exec web bundle exec scss-lint"
		end tell
	end tell
	--	tell current window
	--		create tab with default profile
	--		tell current session
	--			write text "cd ~/Documents/ruby/docker-rails"
	--			write text "docker-compose exec web rake coffeelint"
	--		end tell
	--	end tell
	tell current window
		create tab with default profile
		tell current session
			write text "cd ~/Documents/ruby/docker-rails"
			write text "docker-compose exec web bundle exec rubocop"
		end tell
	end tell
--	tell current window
--		create tab with default profile
--		tell current session
--			write text "cd ~/Documents/ruby/docker-rails"
--			write text "docker-compose exec web bundle exec i18n-tasks missing"
--		end tell
--	end tell
	tell current window
		create tab with default profile
		tell current session
			write text "cd ~/Documents/ruby/docker-rails"
			write text "docker-compose exec web bundle exec rspec"
		end tell
	end tell
	--	tell current window
	--		create tab with default profile
	--		tell current session
	--			write text "cd ~/Documents/ruby/docker-rails"
	--			write text "echo 'markdown-pp README/index.mdpp -o README.md'"
	--		end tell
	--	end tell
end tell