require 'rails_helper'

RSpec.describe 'Events', type: :request do
  let(:user) { User.create(email: 'testing@example.com', password: 'password', password_confirmation: 'password') }

  describe 'GET /index' do
    it 'gets a list of all events' do
      event = user.events.create(
        city: 'San Diego',
        state: 'CA',
        venue: 'Petco Park',
        artist: 'Coldplay',
        date: '25/07/2023',
        show_time: '8:30 PM',
        genre: 'Alternative pop rock',
        images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqFpdKYpSJUxOkuwSovhIghmg-zEDb8pYPjQ&usqp=CAU',
        user_id: 1
      )

      get '/events'

      event = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(event.length).to eq 1
    end
  end

  describe 'POST/create' do
    it 'creates one event' do
      event_params = {
        event: {
          city: 'San Diego',
          state: 'CA',
          venue: 'Pechanga Arena',
          artist: 'Tame Impala',
          date: '16/6/2023',
          show_time: '7:30 PM',
          genre: 'Alternative/Indie',
          images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCWCkQ4NpdlEkdy6E-6J9C_Dq6HgCZu2a2NA&usqp=CAU',
          user_id: user.id
        }
      }
      post '/events', params: event_params
      expect(response).to have_http_status(200)
      event = Event.first
      expect(event.city).to eq 'San Diego'
    end

    it 'requires a city to create an event' do
      event_params = {
        event: {
          state: 'CA',
          venue: 'Pechanga Arena',
          artist: 'Tame Impala',
          date: '16/6/2023',
          show_time: '7:30 PM',
          genre: 'Alternative/Indie',
          images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCWCkQ4NpdlEkdy6E-6J9C_Dq6HgCZu2a2NA&usqp=CAU',
          user_id: user.id
        }
      }

      post '/events', params: event_params
      expect(response).to have_http_status(422)
      expect(response.body).to include("can't be blank")
    end

    it 'requires a state to create an event' do
      event_params = {
        event: {
          city: 'San Diego',
          venue: 'Pechanga Arena',
          artist: 'Tame Impala',
          date: '16/6/2023',
          show_time: '7:30 PM',
          genre: 'Alternative/Indie',
          images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCWCkQ4NpdlEkdy6E-6J9C_Dq6HgCZu2a2NA&usqp=CAU',
          user_id: user.id
        }
      }

      post '/events', params: event_params
      expect(response).to have_http_status(422)
      expect(response.body).to include("can't be blank")
    end

    it 'requires a venue to create an event' do
      event_params = {
        event: {
          city: 'San Diego',
          state: 'CA',
          artist: 'Tame Impala',
          date: '16/6/2023',
          show_time: '7:30 PM',
          genre: 'Alternative/Indie',
          images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCWCkQ4NpdlEkdy6E-6J9C_Dq6HgCZu2a2NA&usqp=CAU',
          user_id: user.id
        }
      }

      post '/events', params: event_params
      expect(response).to have_http_status(422)
      expect(response.body).to include("can't be blank")
    end

    it 'requires a artist to create an event' do
      event_params = {
        event: {
          city: 'San Diego',
          state: 'CA',
          venue: 'Pechanga Arena',
          date: '16/6/2023',
          show_time: '7:30 PM',
          genre: 'Alternative/Indie',
          images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCWCkQ4NpdlEkdy6E-6J9C_Dq6HgCZu2a2NA&usqp=CAU',
          user_id: user.id
        }
      }

      post '/events', params: event_params
      expect(response).to have_http_status(422)
      expect(response.body).to include("can't be blank")
    end

    it 'requires a date to create an event' do
      event_params = {
        event: {
          city: 'San Diego',
          state: 'CA',
          venue: 'Pechanga Arena',
          artist: 'Tame Impala',
          show_time: '7:30 PM',
          genre: 'Alternative/Indie',
          images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCWCkQ4NpdlEkdy6E-6J9C_Dq6HgCZu2a2NA&usqp=CAU',
          user_id: user.id
        }
      }

      post '/events', params: event_params
      expect(response).to have_http_status(422)
      expect(response.body).to include("can't be blank")
    end

    it 'requires show_time to create an event' do
      event_params = {
        event: {
          city: 'San Diego',
          state: 'CA',
          venue: 'Pechanga Arena',
          artist: 'Tame Impala',
          date: '15/07/2023',
          genre: 'Alternative/Indie',
          images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCWCkQ4NpdlEkdy6E-6J9C_Dq6HgCZu2a2NA&usqp=CAU',
          user_id: user.id
        }
      }

      post '/events', params: event_params
      expect(response).to have_http_status(422)
      expect(response.body).to include("can't be blank")
    end

    it 'requires genre to create an event' do
      event_params = {
        event: {
          city: 'San Diego',
          state: 'CA',
          venue: 'Pechanga Arena',
          artist: 'Tame Impala',
          date: '15/07/2023',
          show_time: '8:30 PM',
          images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCWCkQ4NpdlEkdy6E-6J9C_Dq6HgCZu2a2NA&usqp=CAU',
          user_id: user.id
        }
      }

      post '/events', params: event_params
      expect(response).to have_http_status(422)
      expect(response.body).to include("can't be blank")
    end

    it 'requires images to create an event' do
      event_params = {
        event: {
          city: 'San Diego',
          state: 'CA',
          venue: 'Pechanga Arena',
          artist: 'Tame Impala',
          date: '15/07/2023',
          show_time: '8:30 PM',
          user_id: user.id
        }
      }

      post '/events', params: event_params
      expect(response).to have_http_status(422)
      expect(response.body).to include("can't be blank")
    end
  end

  describe 'PATCH/update' do
    it 'updates an existing event' do
      event = user.events.create(
        city: 'San Diego',
        state: 'CA',
        venue: 'Petco Park',
        artist: 'Coldplay',
        date: '25/07/2023',
        show_time: '8:30 PM',
        genre: 'Alternative pop rock',
        images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqFpdKYpSJUxOkuwSovhIghmg-zEDb8pYPjQ&usqp=CAU'
      )

      event_params = {
        event: {
          city: 'New City',
          state: 'FL',
          venue: 'Petco',
          artist: '2 Chainz',
          date: '25/05/2023',
          show_time: '8:15 PM',
          genre: 'Hip-Hop',
          images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfWuqiGRUNOV2yiC8f4Gsz88wwKjiecDHXhrYh25fif5qQE2lsCUPZko_m0RyADnzrNtQ&usqp=CAU'
        }
      }

      patch "/events/#{event.id}", params: event_params

      expect(response).to have_http_status(200)

      updated_event = Event.find(event.id)
      expect(updated_event.city).to eq 'New City'
      expect(updated_event.state).to eq 'FL'
      expect(updated_event.venue).to eq 'Petco'
      expect(updated_event.artist).to eq '2 Chainz'
      expect(updated_event.date.strftime('%d/%m/%Y')).to eq '25/05/2023'
      expect(updated_event.show_time).to eq '8:15 PM'
      expect(updated_event.genre).to eq 'Hip-Hop'
      expect(updated_event.images).to eq 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfWuqiGRUNOV2yiC8f4Gsz88wwKjiecDHXhrYh25fif5qQE2lsCUPZko_m0RyADnzrNtQ&usqp=CAU'
    end
  end

  describe 'DELETE/destroy' do
    it 'deletes an event' do
      event = user.events.create(
        city: 'San Diego',
        state: 'CA',
        venue: 'Petco Park',
        artist: 'Coldplay',
        date: '25/07/2023',
        show_time: '8:30 PM',
        genre: 'Alternative pop rock',
        images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqFpdKYpSJUxOkuwSovhIghmg-zEDb8pYPjQ&usqp=CAU',
        user_id: 1
      )
      delete "/events/#{event.id}"
      expect(response).to have_http_status(200)
      expect(Event.count).to eq(0)
    end
  end
end
