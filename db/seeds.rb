#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
Product.delete_all
Product.create!(title:'CoffeeScript',
  description: 
    %{<p>
        CoffeeScript is JavaScript done right. It provides all of JavaScript's
	functionality wrapped in a cleaner, more succinct syntax. In the first
	book on this exciting new language, CoffeeScript guru Trevor Burnham
	shows you how to hold onto all the power and flexibility of JavaScript
	while writing clearer, cleaner, and safer code.
      </p>},
  image_url:'http://2.bp.blogspot.com/-bKdgLp-rL3g/UdAnQF7JxaI/AAAAAAAAAJo/FAYc_3yjSNs/s210/coffeescript_logo-553d0e0b9fc0a816ef444280eeabc84d.png',    
  price: 36.00)
# . . .
Product.create!(title:'Rails Test Prescriptions',
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url:'rtp.jpg',
  price: 34.95)
  # . . .
  Product.create!(title:'Programming Ruby 1.9 & 2.0',
  description:
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  image_url:'ruby.jpg',
  price: 49.95)
  # . . .
  Product.create!(title:'Ruby mine',
  description:
    %{<p>
        RubyMine — коммерческая IDE для разработки программного обеспечения на Ruby компании JetBrains.
		RubyMine создан на основе IntelliJ IDEA того же производителя. 
		Поддерживает популярные библиотеки, используемые в Ruby-приложениях 
		(в том числе Bundler, RSpec, Shoulda, Cucumber, Git).
      </p>},
  image_url:'https://upload.wikimedia.org/wikipedia/ru/thumb/2/2e/RubyMine_logo.png/220px-RubyMine_logo.png',
  price: 79.95)
