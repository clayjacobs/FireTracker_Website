require 'rubygems'
require 'nokogiri'
require 'open-uri'

task :scrape do
  page = Nokogiri::HTML(open('https://maps.google.com/maps/ms?ie=UTF8&hl=en&source=embed&dg=feature&authuser=0&msa=0&output=kml&msid=208523333872813891131.0004c02beb4f2788337d0'))

  page.css("coordinates").each do |coords|
    coords = coords.text.split("\n")
    coords.each do |coord|
      puts coord.strip
      #coords = coords.text.split(',')
      #s = Submission.new(coords[0], coords[1], "Calfire")
      #s.save
    end
  end
end
