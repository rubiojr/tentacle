module Tentacle

  VERSION = '0.1.1'

  def validate_url(url)
    RestClient.get(url + '/repodata/repomd.xml') rescue return false
    YumRepo::Repomd.new(url) rescue return false
    true
  end

  class RepoFeed
    attr_reader :url, :repo_id, :distro_class
    def initialize(feed)
      @url, @repo_id, @distro_class = feed.split(',').map { |f| f.strip.chomp }
    end

    def to_s
      "URL: #{url.red} REPO_ID: #{repo_id} CLASS: #{distro_class}"
    end
  end

  class FeedCollection

    def self.all(validate = false)
      Git.clone "git://gist.github.com/1139245.git", TEMP_DIR 
      feeds = []
      urls = []
      File.readlines(File.join(TEMP_DIR, "repo_feeds.txt")).each do |line|
        next if (line.strip.chomp.empty? or line =~ /^\s*#/)
        urls << line
      end
      urls.sort! { |a,b| a.split(',')[1] <=> b.split(',')[1] }

      urls.each do |u|
        f = RepoFeed.new(u)
        if validate and validate_url(f.url)
          feeds << f
        else
          feeds << f
        end
      end
      feeds
    end

  end
end
