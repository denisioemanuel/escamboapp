module Backoffice::AdminsHelper
	OptionsForRules = Struct.new(:id, :description)

	def options_for_rule
		options = []
		Admin.roles_i18n.map do |key, value|
			options.push(OptionsForRules.new(key, value))
		end

		options
	end
end
