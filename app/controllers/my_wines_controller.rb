class MyWinesController < ApplicationController
  def index
    @my_wines = MyWine.all

    render("my_wines/index.html.erb")
  end

  def show
    @my_wine = MyWine.find(params[:id])

    render("my_wines/show.html.erb")
  end

  def new
    @my_wine = MyWine.new

    render("my_wines/new.html.erb")
  end

  def create
    @my_wine = MyWine.new

    @my_wine.user_id = params[:user_id]
    @my_wine.wine_id = params[:wine_id]

    save_status = @my_wine.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/my_wines/new", "/create_my_wine"
        redirect_to("/my_wines")
      else
        redirect_back(:fallback_location => "/", :notice => "My wine created successfully.")
      end
    else
      render("my_wines/new.html.erb")
    end
  end

  def edit
    @my_wine = MyWine.find(params[:id])

    render("my_wines/edit.html.erb")
  end

  def update
    @my_wine = MyWine.find(params[:id])

    @my_wine.user_id = params[:user_id]
    @my_wine.wine_id = params[:wine_id]

    save_status = @my_wine.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/my_wines/#{@my_wine.id}/edit", "/update_my_wine"
        redirect_to("/my_wines/#{@my_wine.id}", :notice => "My wine updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "My wine updated successfully.")
      end
    else
      render("my_wines/edit.html.erb")
    end
  end

  def destroy
    @my_wine = MyWine.find(params[:id])

    @my_wine.destroy

    if URI(request.referer).path == "/my_wines/#{@my_wine.id}"
      redirect_to("/", :notice => "My wine deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "My wine deleted.")
    end
  end
end
