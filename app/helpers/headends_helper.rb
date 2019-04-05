module HeadendsHelper

  def headends_for_select
    Headend.all.collect { |h| [h.headend, h.id] }
  end

end
