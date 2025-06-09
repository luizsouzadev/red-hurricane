# Red Hurricane

Red Hurricane é uma aplicação Ruby on Rails que permite consultar a previsão do tempo para qualquer cidade, utilizando a API do OpenWeatherMap.

## Funcionalidades

- Busca de informações meteorológicas por cidade.
- Exibição de temperatura, sensação térmica, umidade, vento, descrição do clima, bandeira do país e ícone do clima.
- Interface moderna e responsiva.

## Configuração

1. **Clone o repositório**
   ```sh
   git clone https://github.com/seu-usuario/red-hurricane.git
   cd red-hurricane
   ```

2. **Instale as dependências**
   ```sh
   bundle install
   ```

3. **Configure sua chave da API**

   Crie um arquivo `.env` na raiz do projeto e adicione a linha abaixo, substituindo `SUA_API_KEY` pela sua chave do OpenWeatherMap:

     ```
     OPENWEATHER_API_KEY=SUA_API_KEY
     ```

4. **Inicie o servidor**
   ```sh
   rails server
   ```