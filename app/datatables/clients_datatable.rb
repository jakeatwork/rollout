class ClientsDatatable
  delegate :params, :h, :link_to, :number_to_currency, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Client.count,
      iTotalDisplayRecords: clients.total_entries,
      aaData: data
    }
  end

private

  def data
    clients.map do |client|
      [
        link_to(client.name, client),
        client.launch_date,

        number_to_currency(client.price.cost),
      ]
    end
  end

  def clients
    @clients ||= fetch_clients
  end

  def fetch_clients
    clients = Client.order("#{sort_column} #{sort_direction}")
    clients = clients.page(page).per_page(per_page)
    if params[:sSearch].present?
      clients = clients.where("name ilike :search", search: "%#{params[:sSearch]}%")
    end
    clients
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[launch_date name]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end