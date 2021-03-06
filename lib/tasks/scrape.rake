require 'rubygems'
require 'nokogiri'
require 'open-uri'

task :scrape => :environment do

  page = Nokogiri::HTML(open('https://maps.google.com/maps/ms?ie=UTF8&hl=en&source=embed&dg=feature&authuser=0&msa=0&output=kml&msid=208523333872813891131.0004c02beb4f2788337d0'))
  time = (Time.now.to_f * 1000).to_i
  page.css("coordinates").each do |coords|
    coords = coords.text.split("\n")
    coords.each do |coord|
      array = coord.strip.split(',')
      if (array[0] != 0 && array[1] !=0)
        puts array[0]
        puts array[1]
        s = Submission.create(:lat => array[0].to_f, :long => array[1].to_f, :category => 'Calfire', :image => nil, :time_submitted => time, :severity => 'N/A')
      end
    end
  end
end