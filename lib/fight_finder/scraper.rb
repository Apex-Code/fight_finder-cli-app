#   ~~~HAVICK WAS HERE~~~


class FightFinder::Scraper


	def self.scrape_details
		doc = Nokogiri::HTML(open("http://mmafighting.com/schedule"))

		fight1 = FightFinder::Fights.new
		fight1.name = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/h2[1]/a').text
		fight1.date = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/h3[1]').text
		fight1.main_event = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/div[1]/div[1]/ul/li[1]/a').text
		fight1.co_main = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/div[1]/div[1]/ul/li[2]/a').text
		fight1.under_card = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/div[1]/div[2]/ul').text.gsub(/\n(\s*\n)+/,"\n")

		fight2 = FightFinder::Fights.new
		fight2.name = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/h2[2]/a').text
		fight2.date = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/h3[2]').text
		fight2.main_event = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/ul[1]/li[1]/a').text
		fight2.under_card = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/ul[1]/li[2]/a').text.gsub(/\n(\s*\n)+/,"\n")


		fight3 = FightFinder::Fights.new
		fight3.name = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/h2[3]/a').text
		fight3.date = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/h3[3]').text
		fight3.main_event = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/ul[2]/li[1]/a').text
		fight3.co_main = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/ul[2]/li[2]/a').text
		fight3.under_card = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/div[2]/div[2]/ul').text.gsub(/\n(\s*\n)+/,"\n")

		fight4 = FightFinder::Fights.new
		fight4.name = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/h2[4]/a').text
		fight4.date = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/h3[4]').text
		fight4.main_event = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/div[2]/div[1]/ul/li/a').text
		fight4.co_main = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/div[2]/div[2]/ul/li[1]/a').text
		fight4.under_card = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/div[5]/div[2]/ul').text.gsub(/\n(\s*\n)+/,"\n")

		fight5 = FightFinder::Fights.new
		fight5.name = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/h2[5]/a').text
		fight5.date = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/h3[5]').text
		fight5.main_event = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/div[2]/div[1]/ul/li/a').text
		fight5.co_main = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/div[2]/div[2]/ul/li[1]/a').text
		fight5.under_card = doc.xpath('//*[@id="top"]/div/div/div[3]/div/div/div[3]/div[2]/ul').text.gsub(/\n(\s*\n)+/,"\n")
	 end




end
