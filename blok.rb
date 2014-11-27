class App
  def initialize
    @x = {}
  end

  def get(url, &block)
    @x[url] = block
  end

  def run(url)
    @x[url].call
  end
end

app = App.new

app.get '/cenan' do
  puts 'ozen'
end

app.get '/ahmet' do
  puts 'kapikiran'
end

app.run('/cenan')
app.run('/ahmet')

