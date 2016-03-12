class NgOrgMailer < ActionMailer::Base
  default from: "chdhackathon@gmail.com"

    def send_confirmation(ng_org)
    @NGOrg           = ng_org
    mail(
      :to      => @NGOrg.email,
      :from    => "chdhackathon@gmail.com",
      :subject => "Account Confirmation link") do |format|
        format.html { render "send_confirmation" }
      end   
  end
end
