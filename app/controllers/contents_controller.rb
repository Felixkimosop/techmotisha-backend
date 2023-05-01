class ContentsController < ApplicationController
skip_before_action :authorize, only: [:create, :index, :update]
  # GET /contents
 def index
    contents = Content.all
   render json:  contents
 end

 def videos
  @videos = Content.where(kind: 'video')
  render json: @videos.map { |video| ContentSerializer.new(video).serializable_hash[:data][:attributes] }
end

def audios
  @audios = Content.where(kind: 'audio')
  render json: @audios.map { |audio| ContentSerializer.new(audio).serializable_hash[:data][:attributes] }
end

def pdfs
  @pdfs = Content.where(kind: 'article/blog')
  render json: @pdfs.map { |pdf| ContentSerializer.new(pdf).serializable_hash[:data][:attributes] }
end



def uploads
  if params[:id].present?
    @content = Content.find(params[:id])
    render json: ContentSerializer.new(@content).serializable_hash[:data][:attributes]
  else
    @content = Content.all
    render json: @content.map { |content| ContentSerializer.new(content).serializable_hash[:data][:attributes] }
  end
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
     params.require(:content).permit(:title, :description, :kind, :url, :thumbnail, :category_id, :user_id, :image, :upload)
   end
end
