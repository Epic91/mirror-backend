class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :update, :destroy]

  # GET /entries
  def index
    entries = Entry.all

    render json: entries, except: [:created_at, :updated_at]
  end

  # GET /entries/1
  def show
    entry = Entry.find_by(params[:id])

    render json: entry
  end

  # POST /entries
  def create
    entry = Entry.create(entry_params)

    if entry.save
      render json: entry, status: :created
    else
      render json: entry.errors, status: :unprocessable_entity
    end

  end

  def edit
    entry = Entry.find_by(params[:id])
    entry.edit

    render json: entry
  end

  # PATCH/PUT /entries/1
  def update
    entry = Entry.find_by(params[:id])
    # byebug
    entry.update(entry_params)
    
    render json: entry
    # if entry.update(entry_params)
    #   render json: entry
    # else
      # render json: entry.errors, status: :unprocessable_entity
    # end
  end

  # DELETE /entries/1
  def destroy
    entry = Entry.find(params[:id])
    entry.destroy

    render json: entry
  end

  private
    def set_entry
      entry = Entry.find(params[:id])
    end

    def entry_params
      # params.require(:entry).permit(:subject, :emotion, :body, :date)
      params.require(:entry).permit(:subject, :emotion, :body, :topic, :highlight, :date, :user_id, :prompt_id)
    end
end
