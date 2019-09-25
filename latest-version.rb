#!/usr/bin/env ruby

require 'digest'
require 'json'
require 'open-uri'

RELEASES_ENDPOINT = 'https://api.github.com/repos/cloudflare/wrangler/releases'

releases_response = open(RELEASES_ENDPOINT).read
$wrangler_releases = JSON.parse releases_response

$wrangler_releases.sort! do |x, y|
    y['published_at'] <=> x['published_at']
end

def get_latest_release version
    raise ArgumentError.new "version must be :stable or :prerelease, got #{version}" \
        unless version == :stable or version == :prerelease
    
    $wrangler_releases.each do |release|
        if version == :stable
            next if release['prerelease'] == true
        end

        return release
    end
end

def hash_release release
    apple_asset = release['assets'].select { |asset| /apple-darwin\.tar\.gz/.match asset['name'] }.first
    download_url = apple_asset['browser_download_url']
    hash = Digest::SHA2.new(256).hexdigest open(download_url).read

    return {:hash => hash, :url => download_url}
end

def print_details release
    puts "++ Version: #{release['tag_name']} ++"

    foo = hash_release release

    puts "URL:     #{foo[:url]}"
    puts "SHA-256: #{foo[:hash]}"

    puts
end

latest_stable     = get_latest_release :stable
latest_prerelease = get_latest_release :prerelease

print_details latest_stable
print_details latest_prerelease