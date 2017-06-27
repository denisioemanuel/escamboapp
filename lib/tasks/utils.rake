namespace :utils do
  desc "Cria Administradores fake"
  task generate_dmin: :environment do
  	puts "Cadastrando ADMINISTRADOR padrão!"

  	10.times do
  		Admin.create!(
  			email: Faker::Internet.email,
  			password: "123456",
  			password_confirmation: "123456"
  			)
  	end

  	puts "ADMINISTRADORES cadastrados com sucesso"

  end

end
