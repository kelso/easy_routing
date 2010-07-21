module EasyRouting
  
  ### Redirect methods ###
  
  def redirect_to_index
    redirect_to index_url
  end
  
  def redirect_to_show(id)
    redirect_to show_url(id)
  end

  ### Methods to generate paths ###
  
  def show_url(id)
    url_for :controller => params[:controller], :action => 'show', :id => id
  end

  def edit_url(id)
    url_for :controller => params[:controller], :action => 'edit', :id => id
  end

  def delete_url(id)
    url_for :controller => params[:controller], :action => 'destroy', :id => id
  end

  def new_url
    url_for :controller => params[:controller], :action => 'new'
  end

  def index_url
    url_for :controller => params[:controller], :action => 'index'
  end

end

