class SetlistsController < ApplicationController
	before_action :set_setlist, only: [:show, :edit, :update, :destroy]
	
=begin
	# GET /setlists
	# GET /setlists.json
	def index
		@setlists = Setlist.all
	end
=end

	# GET /setlists/1
	def show
	end

	# GET /setlists/new
	def new
		@setlist = Setlist.new
	end
	
=begin
	# GET /setlists/1/edit
	def edit
	end
=end

	# POST /setlists
	def create
		@setlist = Setlist.new(setlist_params)

		respond_to do |format|
			if @setlist.save
				format.html { redirect_to @setlist, notice: 'Setlist was successfully created.' }
				# format.json { render :show, status: :created, location: @setlist }
			else
				format.html { render :new }
				# format.json { render json: @setlist.errors, status: :unprocessable_entity }
			end
		end
	end

=begin
	# PATCH/PUT /setlists/1
	def update
		respond_to do |format|
			if @setlist.update(setlist_params)
				format.html { redirect_to @setlist, notice: 'Setlist was successfully updated.' }
				# format.json { render :show, status: :ok, location: @setlist }
			else
				format.html { render :edit }
				# format.json { render json: @setlist.errors, status: :unprocessable_entity }
			end
		end
	end
=end

=begin
	# DELETE /setlists/1
	def destroy
		@setlist.destroy
		respond_to do |format|
			format.html { redirect_to setlists_url, notice: 'Setlist was successfully destroyed.' }
			# format.json { head :no_content }
		end
	end
=end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_setlist
			begin
				@setlist = Setlist.find(params[:id])
			rescue ActiveRecord::RecordNotFound
				redirect_to root_path, notice: 'Invalid Setlist'
				return
			end
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def setlist_params
			params.require(:setlist).permit(:title, :author, :genre)
		end
end
