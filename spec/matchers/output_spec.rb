describe 'Matcher Output' do 
  it { expect { puts 'Olá Mundo' }.to output(/Olá Mundo/).to_stdout }
  it { expect { warn 'Olá Erro' }.to output(/Olá Erro/).to_stderr }
end