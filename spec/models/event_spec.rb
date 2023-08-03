require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:user) { User.create(email: 'testing@example.com', password: 'password', password_confirmation: 'password') }

  it 'should have a valid city' do
    event = user.events.create(
      state: 'CA',
      venue: 'Pechanga Arena',
      artist: 'Tame Impala',
      date: '16/6/2023',
      show_time: '7:30 PM',
      genre: 'Alternative/Indie',
      images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCWCkQ4NpdlEkdy6E-6J9C_Dq6HgCZu2a2NA&usqp=CAU',
      user_id: user.id
    )

    expect(event.errors[:city]).to include "can't be blank"
  end

  it 'should have a valid state' do
    event = user.events.create(
      city: 'San Diego',
      venue: 'Pechanga Arena',
      artist: 'Tame Impala',
      date: '16/6/2023',
      show_time: '7:30 PM',
      genre: 'Alternative/Indie',
      images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCWCkQ4NpdlEkdy6E-6J9C_Dq6HgCZu2a2NA&usqp=CAU',
      user_id: user.id
    )

    expect(event.errors[:state]).to include "can't be blank"
  end

  it 'should have a valid venue' do
    event = user.events.create(
      city: 'San Diego',
      state: 'CA',
      artist: 'Tame Impala',
      date: '16/6/2023',
      show_time: '7:30 PM',
      genre: 'Alternative/Indie',
      images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCWCkQ4NpdlEkdy6E-6J9C_Dq6HgCZu2a2NA&usqp=CAU',
      user_id: user.id
    )

    expect(event.errors[:venue]).to include "can't be blank"
  end

  it 'should have a valid artist' do
    event = user.events.create(
      city: 'San Diego',
      state: 'CA',
      venue: 'Pechanga Arena',
      date: '16/6/2023',
      show_time: '7:30 PM',
      genre: 'Alternative/Indie',
      images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCWCkQ4NpdlEkdy6E-6J9C_Dq6HgCZu2a2NA&usqp=CAU',
      user_id: user.id
    )

    expect(event.errors[:artist]).to include "can't be blank"
  end

  it 'should have a valid date' do
    event = user.events.create(
      city: 'San Diego',
      state: 'CA',
      venue: 'Pechanga Arena',
      artist: 'Tame Impala',
      show_time: '7:30 PM',
      genre: 'Alternative/Indie',
      images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCWCkQ4NpdlEkdy6E-6J9C_Dq6HgCZu2a2NA&usqp=CAU',
      user_id: user.id
    )

    expect(event.errors[:date]).to include "can't be blank"
  end

  it 'should have a valid show_time' do
    event = user.events.create(
      city: 'San Diego',
      state: 'CA',
      venue: 'Pechanga Arena',
      artist: 'Tame Impala',
      date: '16/6/2023',
      genre: 'Alternative/Indie',
      images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCWCkQ4NpdlEkdy6E-6J9C_Dq6HgCZu2a2NA&usqp=CAU',
      user_id: user.id
    )

    expect(event.errors[:show_time]).to include "can't be blank"
  end

  it 'should have a valid genre' do
    event = user.events.create(
      city: 'San Diego',
      state: 'CA',
      venue: 'Pechanga Arena',
      artist: 'Tame Impala',
      date: '16/6/2023',
      show_time: '7:30 PM',
      images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCWCkQ4NpdlEkdy6E-6J9C_Dq6HgCZu2a2NA&usqp=CAU',
      user_id: user.id
    )

    expect(event.errors[:genre]).to include "can't be blank"
  end

  it 'should have a valid images' do
    event = user.events.create(
      city: 'San Diego',
      state: 'CA',
      venue: 'Pechanga Arena',
      artist: 'Tame Impala',
      date: '16/6/2023',
      show_time: '7:30 PM',
      genre: 'Alternative/Indie',
      user_id: user.id
    )

    expect(event.errors[:images]).to include "can't be blank"
  end
end
