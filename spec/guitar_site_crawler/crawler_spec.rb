require 'spec_helper'
require 'guitar_site_crawler'

describe GuitarSiteCrawler::Crawler do
  before do
    @crawler = GuitarSiteCrawler::Crawler.new
  end

  it 'should be confirm if parse method exists' do
    expect(GuitarSiteCrawler::Crawler.method_defined?(:parse)).to be true
  end

  it 'should be confirm if fetch method exists' do
    expect(GuitarSiteCrawler::Crawler.method_defined?(:fetch)).to be true
  end

  it 'should be get user_agent value' do
    expect(@crawler.user_agent).to eq('Mozilla/5.0 (iPhone; U; CPU iPhone OS 5_1_1 like Mac OS X; en) AppleWebKit/534.46.0 (KHTML, like Gecko) CriOS/19.0.1084.60 Mobile/9B206 Safari/7534.48.3')
  end


  it 'should be get url_list' do
    @crawler.run()
    expect(@crawler.url_list.length).to eq 150
  end

  it 'should be set lastpage for url_list ' do
    crawler = GuitarSiteCrawler::Crawler.new
    LASTPAGE = 3
    crawler.run(LASTPAGE)
    expect(crawler.url_list.length).to eq 90
  end
  
end
