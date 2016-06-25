Dir.glob("source/*.md").each do |file|
  file_string = File.read(file)
  title = nil

  new_string = file_string.
    gsub(/\r?\n?.+?<h1.*?>(.+?)\r?\n?<\/h1>.*?\r?\n?/) { |m| title = $1.strip; "# #{title}\n\n" }.
    gsub(/.*?<p class="center"><img src=".*\/(.*?)" alt="(.*?)\r?\n?"><\/p>.*\r?\n?/) { |m| "![#{$2}](images/#{$1})\n" }.
    gsub(/\t?<p>(.+?)<\/p>/) { |m| "#{$1.strip}\n" }.
    gsub(/[‘’]/, "'").gsub(/[“”]/, '"')
  adjusted_title = title.gsub(/( | - )/, "-").
    gsub(/(['",:;\/\\,‘’“”\(\)]|&amp;)/,"").downcase
  number = File.basename(file, ".md")
  File.open("chronicles/#{number}.#{adjusted_title}.md", "w") do |file|
    file.puts new_string
  end

  puts "[![#{title}](thumbnails/)](chronicles/#{number}.#{adjusted_title}.md)"
end

  # gsub(/(&ldquo;|&rdquo;)/, '"').
  # gsub(/(&lsquo;|&rsquo;)/, "'").
  # gsub(/&hellip;/, "…").
  # gsub(/\.\.\./, "…").
  # gsub(/<p>(.+?)<\/p>/, "$1\n")
