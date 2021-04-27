module PaymentsHelper
  def find_building_by_id_adm(id)
  	Building.where(idAdm: id)
  end
end
