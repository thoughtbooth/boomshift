module ApplicationHelper
  
  def new_user_wizard
    unless current_user.setup_complete
      @confirm_email = true if current_user.confirmed?
      @create_biz = true if current_user.business
      if @create_biz
        @set_terms = true if current_user.business.payment_term
        @add_service = true if current_user.business.services.first
        @add_client = true if current_user.business.clients.first
        @enroll_client = true if Enrollment.joins(client: [{ business: :user }]).where("business_id = ?", current_user.business.id).first
        @schedule_job = true if Job.joins(enrollment: [{ client: :business }]).where("business_id = ?", current_user.business.id).first
      end
      @completed_step_count = 0
      @completed_step_count += 1 if @confirm_email
      @completed_step_count += 1 if @create_biz
      @completed_step_count += 1 if @set_terms
      @completed_step_count += 1 if @add_service
      @completed_step_count += 1 if @add_client
      @completed_step_count += 1 if @enroll_client
      @completed_step_count += 1 if @schedule_job
      @progress = @completed_step_count.to_f / 7
  #     @complete_job
  #     @send_bill
  #     @get_paid
  #     HTML that I took out of template:
  #     <p><i class="fa fa-circle-o fa-lg"></i> Complete your first job</p>
  #     <p><i class="fa fa-circle-o fa-lg"></i> Send your first bill</p>
  #     <p><i class="fa fa-circle-o fa-lg"></i> Get paid!</p>
    end
  end
  
  def bootstrap_class_for(flash_type)
    case flash_type
    when "success"
      "alert-success"   # Green
    when "error"
      "alert-danger"    # Red
    when "alert"
      "alert-warning"   # Yellow
    when "notice"
      "alert-info"      # Blue
    else
      flash_type.to_s
    end
  end

  def us_states_and_ca_provinces
    [
      # United States
      ['Alabama', 'AL'],
      ['Alaska', 'AK'],
      ['Arizona', 'AZ'],
      ['Arkansas', 'AR'],
      ['California', 'CA'],
      ['Colorado', 'CO'],
      ['Connecticut', 'CT'],
      ['Delaware', 'DE'],
      ['District of Columbia', 'DC'],
      ['Florida', 'FL'],
      ['Georgia', 'GA'],
      ['Hawaii', 'HI'],
      ['Idaho', 'ID'],
      ['Illinois', 'IL'],
      ['Indiana', 'IN'],
      ['Iowa', 'IA'],
      ['Kansas', 'KS'],
      ['Kentucky', 'KY'],
      ['Louisiana', 'LA'],
      ['Maine', 'ME'],
      ['Maryland', 'MD'],
      ['Massachusetts', 'MA'],
      ['Michigan', 'MI'],
      ['Minnesota', 'MN'],
      ['Mississippi', 'MS'],
      ['Missouri', 'MO'],
      ['Montana', 'MT'],
      ['Nebraska', 'NE'],
      ['Nevada', 'NV'],
      ['New Hampshire', 'NH'],
      ['New Jersey', 'NJ'],
      ['New Mexico', 'NM'],
      ['New York', 'NY'],
      ['North Carolina', 'NC'],
      ['North Dakota', 'ND'],
      ['Ohio', 'OH'],
      ['Oklahoma', 'OK'],
      ['Oregon', 'OR'],
      ['Pennsylvania', 'PA'],
      ['Puerto Rico', 'PR'],
      ['Rhode Island', 'RI'],
      ['South Carolina', 'SC'],
      ['South Dakota', 'SD'],
      ['Tennessee', 'TN'],
      ['Texas', 'TX'],
      ['Utah', 'UT'],
      ['Vermont', 'VT'],
      ['Virginia', 'VA'],
      ['Washington', 'WA'],
      ['West Virginia', 'WV'],
      ['Wisconsin', 'WI'],
      ['Wyoming', 'WY'],
      
      # Canada
      ['Alberta', 'AB'],
      ['British Columbia', 'BC'],
      ['Manitoba', 'MB'],
      ['New Brunswick', 'NB'],
      ['Newfoundland and Labrador', 'NL'],
      ['Nova Scotia', 'NS'],
      ['Northwest Territories', 'NT'],
      ['Nunavut', 'NU'],
      ['Ontario', 'ON'],
      ['Prince Edward Island', 'PE'],
      ['Quebec', 'QC'],
      ['Saskatchewanh', 'SK'],
      ['Yukon', 'YT']
    ]
  end
end
