class ContactsController < ApplicationController
  before_action :set_user
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    render json: @user&.contacts
  end

  def create
    @contact = @user.contacts.new(contact_params)
    if @contact.save
      render json: {contact: @contact, message: "Contact created",  status: :ok}
    else
      render json: { error: @contact.errors }, status: :unauthorized
    end
  end

  def show
    render json: @contact
  end

  def edit
  end

  def update
    if @contact.update(contact_params)
      render json: { contact: @contact, message: "Contact updated", status: :ok }
    else
      render json: { error: @contact.errors }, status: :unauthorized
    end
  end

  def destroy
    if @contact.destroy
      render json: { message: "Contact deleted" }
    else
      render json: { message: "Cannot delete contact" }
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_contact
    @contact ||= @user.contacts.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:name, :phone)
  end
end
