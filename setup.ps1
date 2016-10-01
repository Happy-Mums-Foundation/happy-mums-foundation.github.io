# Check ruby exists
if (!(get-command ruby -ErrorAction SilentlyContinue))
{
	# Install chocolately
	if (!(get-command choco -ErrorAction SilentlyContinue))
	{
		iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
	}

	choco install -y ruby
}

cmd /c gem install jekyll
cmd /c gem install github-pages