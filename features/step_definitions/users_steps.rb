Quando('faço uma requisição GET para o serviço Users') do
    @resquest_users = users.get_users
end
  
Então('o serviço Users deve responder com {int}') do |status_code|
    expect(@resquest_users.code).to eq status_code
end
  
Então('retorna a lista de usuários') do
    expect(@resquest_users.message).not_to be_empty
end

Quando('faço uma requisição GET para o serviço Users passando id') do
    @id = sort_id.to_i
    @resquest_users = users.get_user(@id)
end
  
Então('retorna o usuário') do
    expect(@resquest_users.parsed_response['ID']).to eql @id
end

Quando('faço uma requisição POST para o serviço Users') do
    @payload_users = build(:user).user_hash
    @resquest_users = users.post_users(@payload_users)
end  

Então('retorna o usuário criado') do
    expect(@resquest_users['ID']).to eql @payload_users[:ID]
    expect(@resquest_users['UserName']).to eql @payload_users[:UserName]
    expect(@resquest_users['Password'].to_i).to eql @payload_users[:Password]
end