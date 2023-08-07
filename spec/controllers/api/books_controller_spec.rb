require 'rails_helper'

RSpec.describe Api::BooksController, type: :controller do

  describe 'GET #index' do
    let(:library_1) { Library.create(name: 'Library_1') }
    let(:user_1) { User.create(name: 'User_1') }
    let!(:book_1) { Book.create(title: 'Book_1', description: 'The description of the book_1', author: 'Author_1', status: Book.statuses[:available], library_id: library_1.id) }
    let!(:book_2) { Book.create(title: 'Book_2', description: 'The description of the book_2', author: 'Author_2', status: Book.statuses[:checked_out], checked_out_by_id: user_1.id, library_id: library_1.id) }
  
    it 'returns a successful response with book information' do
     get :index, params: { library_id: library_1.id }, format: :json
      expect(response).to have_http_status(:success)
      json_response = JSON.parse(response.body)
      expect(json_response['library']['name']).to eq(library_1.name)
      expect(json_response['library']['id']).to eq(library_1.id)
      expect(json_response['library']['books'].size).to eq(2)
      expect(json_response['library']['books'][0]['status']).to eq('available')
      expect(json_response['library']['books'][1]['status']).to eq('checked_out')
      expect(json_response['library']['books'][1]['checked_out_by']).to eq(user_1.name)

    end

    it 'returns an error for an invalid library_id' do
      get :index, params: { library_id: 20 }
      expect(response).to have_http_status(:not_found)
      expect(JSON.parse(response.body)['error']).to eq('Library not found')
    end
  end

end