# describe 'Test Double' do
#     it '--' do
#         user = double('User')
#         puts user.inspect 
#         user.name
#     end
# end

describe 'Test Double' do
    it '--' do
        user = double('User')
        allow(user).to receive_messages(name: 'Jack', password: 'secret')
        puts user.name
        puts user.password
    end

    it 'as_null_object' do
        user = double('User').as_null_object
        allow(user).to receive_messages(name: 'Jack', password: 'secret')
        puts user.name
        puts user.password
        user.abc
    end
end