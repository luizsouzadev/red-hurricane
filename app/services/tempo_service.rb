class TempoService
  OPENWEATHER_API_URL = 'https://api.openweathermap.org/data/2.5/weather'
  API_KEY = ENV['OPENWEATHER_API_KEY']

  def self.consultar_tempo(cidade)
    response = Faraday.get(OPENWEATHER_API_URL, {
      q: cidade,
      appid: API_KEY,
      units: 'metric',
      lang: 'pt_br'
    })

    return nil unless response.success?

    data = JSON.parse(response.body)

    {
      cidade: data["name"],
      pais: data["sys"]["country"],
      temperatura: data["main"]["temp"].ceil,
      descricao: data["weather"][0]["description"].capitalize,
      vento: data["wind"]["speed"],
      umidade: data["main"]["humidity"],
      sensacao_termica: data["main"]["feels_like"].ceil,
      bandeira_url: "https://flagsapi.com/#{data["sys"]["country"]}/flat/64.png",
      icone_url: "https://openweathermap.org/img/wn/#{data["weather"][0]["icon"]}@2x.png"
    }
  end
end
