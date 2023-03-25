
Feature: US1006 Kullanici configuration dosyasindaki bilgilerle login olabilmeli
  @p1
  Scenario: TC10 Gecerli kullanici adi ve  gecersiz sifre ile Negatif Login Testi

    Given kullanici "qdUrl" anasayfaya gider
    Then ilk sayfa login linkine click yapar
    And kullanici kutusuna "qdGecerliUsername" yazar
    And password kutusuna "qdGecersizPassword" yazar
    And cookisi kabul eder
    And 3 saniye bekler
    Then login butonuna basar
    And basarili giris yapilamadigini test eder
    And 3 saniye bekler
    Then sayfayi kapatir
  @p1
  Scenario: TC11 Gecersiz kullanici adi ve  gecerli sifre ile Negatif Login Testi

    Given kullanici "qdUrl" anasayfaya gider
    Then ilk sayfa login linkine click yapar
    And kullanici kutusuna "qdGecersizUsername" yazar
    And password kutusuna "qdGecerliPassword" yazar
    And cookisi kabul eder
    And 3 saniye bekler
    Then login butonuna basar
    And basarili giris yapilamadigini test eder
    And 3 saniye bekler
    Then sayfayi kapatir
  @p1
  Scenario: TC12 Gecersiz kullanici adi ve  gecersiz sifre ile Negatif Login Testi

    Given kullanici "qdUrl" anasayfaya gider
    Then ilk sayfa login linkine click yapar
    And kullanici kutusuna "qdGecersizUsername" yazar
    And password kutusuna "qdGecersizPassword" yazar
    And cookisi kabul eder
    And 3 saniye bekler
    Then login butonuna basar
    And basarili giris yapilamadigini test eder
    And 3 saniye bekler
    Then sayfayi kapatir