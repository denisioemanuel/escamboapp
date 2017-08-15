namespace :dev do
  images_path = Rails.root.join('public','system')

  desc "Executando o settup de desenvolvimento"
  task setup: :environment do
    puts "APAGANDO O BANCO DE DADOS.... #{%x(rake db:drop)}"
    puts "Apagando imagens de public/system #{%x(rm -rf #{images_path})}"
    puts "CRIANDO O BANCO DE DADOS.... #{%x(rake db:create)}"
    puts %x(rake db:migrate)
    puts %x(rake db:seed)
    puts %x(rake dev:generate_admin)
    puts %x(rake dev:generate_member)
    puts %x(rake dev:generate_ads)
  end
  desc "Settup de desenvolvimento Executado com Sucesso"

  ######################################

  desc "Cria Administradores fake"
  task generate_admin: :environment do
  	puts "Cadastrando ADMINISTRADOR padrão!"
  	10.times do
  		Admin.create!(
        name: Faker::Name.name,
  			email: Faker::Internet.email,
  			password: "123456",
  			password_confirmation: "123456",
        role: [0,0,1,1,1].sample
  			)
  	end
  	puts "ADMINISTRADORES cadastrados com sucesso"
  end

  ######################################

  desc "Cria Membros fake"
  task generate_member: :environment do
    puts "Cadastrando MEMBROS padrão!"
    100.times do
      Member.create!(
        email: Faker::Internet.email,
        password: "123456",
        password_confirmation: "123456"
        )
    end
    puts "MEMBROS cadastrados com sucesso"
  end

  ######################################

  desc "Cria Anúcios fake"
  task generate_ads: :environment do
    puts "Cadastrando de ANÚNCIOS"

    5.times do
      Ad.create!(
        title: Faker::Lorem.sentence([2,3,4,5].sample),
        description: Faker::Lorem.paragraph,
        member: Member.first,
        category: Category.all.sample,
        price: "#{Random.rand(500)},#{Random.rand(99)}",
        picture: File.new(Rails.root.join('public','images',"#{Random.rand(9)}.jpg"), 'r')
        )
    end

    100.times do
      Ad.create!(
        title: Faker::Lorem.sentence([2,3,4,5].sample),
        description: Faker::Lorem.paragraph,
        member: Member.all.sample,
        category: Category.all.sample,
        price: "#{Random.rand(500)},#{Random.rand(99)}",
        picture: File.new(Rails.root.join('public','images',"#{Random.rand(9)}.jpg"), 'r')
        )
    end
    puts "ANÚNCIOS cadastrados com sucesso"
  end

end
