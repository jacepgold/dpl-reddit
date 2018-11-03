class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  after_action :more_cowbell

  def verify_paid
    #check if user is paid else redirect to payment page
  end

  def more_cowbell
    Rails.logger.info('DING, DING, DING')
  end
end
