module FormHelper
  def setup_person(peroson)
    peroson.vehicle ||= Vehicle.new
    2.times { peroson.driver_histories.build }
    peroson
  end
end