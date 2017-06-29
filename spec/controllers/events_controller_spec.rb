require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  before do
    @user1 = User.create(full_name: "test1", email: 'test1@email.com', password: '12345')
    @user2 = User.create(full_name: "test2", email: 'test2@email.com', password: '12345')
    @event1 = Event.create(name: "Bolero", starts_at: 'Fri, 11 Mar 2018 7:00 AM+0700', publish: true)
    @event2 = Event.create(name: "Acoustic", starts_at: 'Fri, 11 Mar 2018 7:00 AM+0700', publish: false)
  end
  describe "GET index" do
      it "assigns upcoming teams" do
        get :index
        expect(assigns(:events)).to match([@event1])
      end

      it "renders the index template" do
        get :index
        expect(response).to render_template("index")
      end
    end

  describe 'routing' do
    it 'routes GET /events to EventsController#index' do
      expect(get: '/events').to route_to(controller: 'events', action: 'index')
    end

    it 'routes GET /events/1 to EventsController#show' do
      expect(get: '/events/1').to route_to(controller: 'events', action: 'show', id: '1')
    end

  end

end
