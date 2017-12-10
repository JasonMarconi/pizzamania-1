module OrdersHelper
  def pizza_type_select
    PizzaType.all.collect{|m| [m.name, m.id] }
  end

  def size_select
    [['Small', 'small'], ['Medium', 'medium'], ['Large', 'large']]
  end
end
