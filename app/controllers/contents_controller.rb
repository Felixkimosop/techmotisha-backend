class ContentsController < ApplicationController
  skip_before_action :authorize, only: [:create, :index, :show, :update]
  # GET /contents
 def index
    contents = Content.all

   render json:  contents
 end

 # GET /contents/1
 def show
   content = Content.find_by(id: params[:id])
   render json:  content
 end

 # POST /contents
 def create
    content = Content.new(content_params)
  content.is_approved = false 
   if  content.save
     render json:  content, status: :created, location:  content
   else
     render json:  content.errors, status: :unprocessable_entity
   end
 end

 # PATCH/PUT /contents/1
#  def update
#    content = Content.find(params[:id])
#    if  content.update(content_params)
#      render json:  content
#    else
#      render json:  content.errors, status: :unprocessable_entity
#    end
#  end

 def update
  content = Content.find(params[:id])
  if content.update(content_params)
    content.update_column(:is_approved, true) # set is_approved to true
    render json: content
  else
    render json: content.errors, status: :unprocessable_entity
  end
end


 # DELETE /contents/1
 def destroy
   content = Content.find(params[:id])
    content.destroy
   head :no_content
 end

 private
    # Only allow a list of trusted parameters through.
   def content_params
     params.require(:content).permit(:title, :description, :kind, :url, :thumbnail, :category_id, :user_id)
   end
end
