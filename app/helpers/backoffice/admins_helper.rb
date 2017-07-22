module Backoffice::AdminsHelper
	OptionsForRules = Struct.new(:id, :description)

	def options_for_rule
		Admin.roles_i18n.map do |key, value|
			OptionsForRules.new(key, value)
		end
	end
end
