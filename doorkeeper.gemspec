#Visual Studio Code
🚀 Get GitHub Copilot Free in VS Code!

Dismiss this update
Download Visual Studio Code Insiders
Get the latest release each day.
Download VS Code.deb
Debian, Ubuntu
Download VS Code.rpm
Red Hat, Fedora, SUSE
Linux VS Code Insiders downloads
.deb	x64	Arm32	Arm64
.rpm	x64	Arm32	Arm64
.tar.gz	x64	Arm32	Arm64
Snap	Snap Store
CLI	x64	Arm32	Arm64
Also available on Windows, Mac and the Web

By downloading and using Visual Studio Code, you agree to the license terms and privacy statement. Third party licenses for the CLI can be found here.

For early adopters
Insiders has the most recent code pushes and may lead to the occasional broken build.

Frequent builds
New builds at least everyday with features, bug fixes, and other recently closed issues.

Side-by-side install
Insiders installs next to the Stable build, allowing you to use either independently.

See SHA-256 Hashes
Windows User Installer (x64)	c339046c3583fa7b7e81c6abb71abec494a40d2442e099a8610723cdc1600b14
Windows System Installer (x64)	67904c4d9a19214ee6da74cc3b3bccc2d53a0d25eaefb0ff873ed54450af9771
Windows .zip (x64)	3d2301bab81ae1eca2d386000d833a432a9b34aceea732c7b7e56b32b74bc503
Windows CLI (x64)	0d2cc0c984ba3a3954143bed531403007d1fb34b141ef4acfcedd915289c57ce
Windows User Installer (Arm64)	b129b47b92ae008851304c76ef278dbfbe5c66130b009393fd3117f98ce9480d
Windows .zip (Arm64)	a9ef328a4f79da7a0455791a023fd88f50f26c8b7d459428efc907edaf0c6c1c
Windows System Installer (Arm64)	d9a73fafa2028c2b5c0f2b4d2ddc2ab8541ef9b46a60cc8a2728b2d5fecce867
Windows CLI (Arm64)	fc01f319eb6b53a7f153e6a63d9d47438911d334e51f39aaff39787f3d4abd50
Linux .deb (x64)	f6ac5b265c7830e2fb624a117d53a7dfae9de0d5a9ca3cdfca15172cea72adc2
Linux .rpm (x64)	ceb5dfb723f626d45776cb146f9336c1669d16586efd63335568085a0ac8f864
Linux .tar.gz (x64)	1854d5c4a71183d18218b06fd2794f3b4f85745924ab984562bd23c95a978c8e
Linux CLI (x64)	ac55e7630d315fdf33cac13bbc8bc1c42e67015e80bf31a6c696c747aa0969aa
Linux .tar.gz (Arm32)	01fdee131132c87b8176671cd53c2295ae3c3954da3b1d4b53ebda2243171d10
Linux .deb (Arm32)	bc30fa5554146314d64d95b7f0416ec86995439db9e2a3eb8d29fdec0a4487fc
Linux .rpm (Arm32)	e43725f6ff3f992ed9aaa171fe76368a572567f064f73f83b95c5f1986650e92
Linux CLI (Arm32)	2450cf084fdf4507131ffa7f2a8d5b8f65dc4a6349043bf678ba0e3697a94cd3
Linux .tar.gz (Arm64)	3b6d011e5368395ff03eda14e51d2e34d96cbde54bdbfaf9a46d48a650001609
Linux .deb (Arm64)	4318dd432acc36c4c9b45333bf5a4439a0b5467fa1f3da3f02c5821d6b6b6ff0
Linux .rpm (Arm64)	020beb970337ce6b8d741d1e15c4dec30d2935c016982327a6b2185b8275df66
Linux CLI (Arm64)	68d622c10906ac0831bbbbfe63f9d6080f13f285ec3092ed907b6e46f243a7c6
Mac for Apple silicon	93e8a33423b5591ee441296525b3e684dfba42fbd0529967298db29b510c909f
Mac CLI for Apple silicon	d9b886f818f6e01fe00290fd37f463cc14c5889d44d4b01287f606b44eada98c
Mac for Intel chip	a73f01322a56ff765bf57af1027efeb94a81c5d9beaa34f38778d72dd7d7aac5
Mac CLI for Intel chip	fbe400d866cd7631d595fe30fce4e89c1b8562e0c5e64a1d1e780427e913beba
Mac Universal Build	ef8e9b6fa15b8b12c50c10319036fc37022bce5d563693ddc5931eaf16cdade5
Follow us on X VS Code on Github VS Code on YouTube
Microsoft homepage
Support Privacy Terms of Use License frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path("lib", __dir__))

require "doorkeeper/version"

Gem::Specification.new do |gem|
  gem.name        = "doorkeeper"
  gem.version     = Doorkeeper::VERSION::STRING
  gem.authors     = ["Felipe Elias Philipp", "Tute Costa", "Jon Moss", "Nikita Bulai"]
  gem.email       = %w[bulaj.nikita@gmail.com]
  gem.homepage    = "https://github.com/doorkeeper-gem/doorkeeper"
  gem.summary     = "OAuth 2 provider for Rails and Grape"
  gem.description = "Doorkeeper is an OAuth 2 provider for Rails and Grape."
  gem.license     = "MIT"

  gem.files = Dir[
    "{app,config,lib,vendor}/**/*",
    "CHANGELOG.md",
    "MIT-LICENSE",
    "README.md",
  ]
  gem.require_paths = ["lib"]

  gem.metadata = {
    "homepage_uri" => "https://github.com/doorkeeper-gem/doorkeeper",
    "changelog_uri" => "https://github.com/doorkeeper-gem/doorkeeper/blob/main/CHANGELOG.md",
    "source_code_uri" => "https://github.com/doorkeeper-gem/doorkeeper",
    "bug_tracker_uri" => "https://github.com/doorkeeper-gem/doorkeeper/issues",
    "documentation_uri" => "https://doorkeeper.gitbook.io/guides/",
    "funding_uri" => "https://opencollective.com/doorkeeper-gem",
  }

  gem.add_dependency "railties", ">= 5"
  gem.required_ruby_version = ">= 2.7"

  gem.post_install_message = <<~MSG.strip
    Starting from 5.5.0 RC1 Doorkeeper requires client authentication for Resource Owner Password Grant
    as stated in the OAuth RFC. You have to create a new OAuth client (Doorkeeper::Application) if you didn't
    have it before and use client credentials in HTTP Basic auth if you previously used this grant flow without
    client authentication. 

    To opt out of this you could set the "skip_client_authentication_for_password_grant" configuration option
    to "true", but note that this is in violation of the OAuth spec and represents a security risk.

    Read https://github.com/doorkeeper-gem/doorkeeper/issues/561#issuecomment-612857163 for more details.
  MSG

  gem.add_development_dependency "appraisal"
  gem.add_development_dependency "capybara"
  gem.add_development_dependency "coveralls_reborn"
  gem.add_development_dependency "database_cleaner", "~> 2.0"
  gem.add_development_dependency "factory_bot", "~> 6.0"
  gem.add_development_dependency "generator_spec", "~> 0.10.0"
  gem.add_development_dependency "grape"
  gem.add_development_dependency "rake", ">= 11.3.0"
  gem.add_development_dependency "rspec-rails"
  gem.add_development_dependency "timecop"
end
