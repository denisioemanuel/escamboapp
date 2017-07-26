class Backoffice::SendMailController < ApplicationController

	def edit
		@admin = Admin.find(params[:id])
		respond_to do |format|
			format.js
		end
	end

	def create
		begin
			AdminMailer.send_mail(current_admin, params[:'recipient-text'], params[:'subject-text'], params[:'message-text']).deliver_now
			@notify_message = t('messages.send_mail_success')
			@notify_tag = "success"
		rescue
			@notify_message = t('messages.send_mail_error')
			@notify_tag = "error"
		end
		respond_to do |format|
			format.js
		end
	end
end
