describe 'HTTParty' do
    # it 'content_type' do
    #     response = HTTParty.get('https://jsonplaceholder.typicode.com/todos/2')
    #     content_type = response.headers['content-type']
    #     puts content_type
    #     expect(content_type).to match(/application\/json/)  
    # end

    # Webmock
    # it 'content_type' do
    #     stub_request(:get, "https://jsonplaceholder.typicode.com/todos/2").
    #         to_return(status: 200, body: "", headers: {'content-type': 'application/json'})

    #     response = HTTParty.get('https://jsonplaceholder.typicode.com/todos/2')
    #     content_type = response.headers['content-type']
    #     puts content_type
    #     expect(content_type).to match(/application\/json/)  
    # end

    # VCR
    # it 'content_type' do
    #     VCR.use_cassette("jsonplaceholder/posts") do
    #         response = HTTParty.get('https://jsonplaceholder.typicode.com/todos/2')
    #         content_type = response.headers['content-type']
    #         puts content_type
    #         expect(content_type).to match(/application\/json/) 
    #     end 
    # end

    # VCR metadados do RSpec
    # # it 'content_type', vcr: { cassette_name: 'jsonplaceholder/posts' } do
    #     # response = HTTParty.get('https://jsonplaceholder.typicode.com/todos/2')
    #     content_type = response.headers['content-type']
    #     expect(content_type).to match(/application\/json/) 
    # end

    # VCR com URIs não determinísticas
    # it 'content_type', vcr: { cassette_name: 'jsonplaceholder/posts', match_requests_on: [:body] } do
    #     response = HTTParty.get("https://jsonplaceholder.typicode.com/todos/#{[1,2,3,4,5].sample}")
    #     content_type = response.headers['content-type']
    #     expect(content_type).to match(/application\/json/) 
    # end

    # Modos de gravação do VCR
    it 'content_type', vcr: { cassette_name: 'jsonplaceholder/posts', :record => :new_episodes } do
        response = HTTParty.get('https://jsonplaceholder.typicode.com/todos/3')
        content_type = response.headers['content-type']
        expect(content_type).to match(/application\/json/) 
    end
end