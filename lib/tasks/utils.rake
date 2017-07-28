namespace :utils do
  desc "Cria Administradores fake"
  task generate_dmin: :environment do
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

  desc "Cria Anúcios fake"
  task generate_ads: :environment do
    puts "Cadastrando de ANÚNCIOS"
    10.times do
      Ad.create!(
        title: Faker::Lorem.sentence([2,3,4,5].sample),
        description: Faker::Lorem.paragraph,
        member: Member.all.sample,
        category: Category.all.sample
        )
    end
    puts "ANÚNCIOS cadastrados com sucesso"
  end

end
