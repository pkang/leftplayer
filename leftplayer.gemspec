spec = Gem::Specification.new do |s|
  s.name = "leftplayer"
  s.version = "0.1"
  s.date = Time.now.strftime('%Y-%m-%d')
  s.authors = ["Pablo Kang"]
  s.email = ["pablokang@gmail.com"]
  s.homepage = "https://github.com/pablokang/leftplayer"
  s.license = "MIT"
  s.has_rdoc = false
  s.summary = ""

  s.files = `git ls-files`.split("\n")
end