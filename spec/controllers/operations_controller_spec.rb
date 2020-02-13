require 'rails_helper'

RSpec.describe OperationsController, type: :controller do

  before(:all) do
    @employee ||= Faker::Name.name
    10.times.each do
      Operation.create(employee: @employee, operation: 'Marcar Chegada')
      Operation.create(employee: @employee, operation: 'Marcar Saída')
    end
  end
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "returns all operations" do
      get :index
      expect(assigns(:operations)).should have_exactly(20).items
    end
    
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

end
