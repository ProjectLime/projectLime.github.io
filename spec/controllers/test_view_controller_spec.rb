require 'rails_helper'

RSpec.describe TestViewController, :type => :controller do

  describe "GET testMap" do
    it "returns http success" do
      get :testMap
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET testList" do
    it "returns http success" do
      get :testList
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET testMapPhone" do
    it "returns http success" do
      get :testMapPhone
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET testListPhone" do
    it "returns http success" do
      get :testListPhone
      expect(response).to have_http_status(:success)
    end
  end

end
