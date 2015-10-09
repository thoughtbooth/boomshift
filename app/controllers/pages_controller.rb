class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]
  before_action :set_business, except: [:home, :mybusiness]
  
  def home
  end
  
  def mybusiness
  end
  
  def myclients
  end
  
  def myschedule
  end
  
  def advertising
  end
  
  def reports
  end
end
