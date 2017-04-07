# -*- encoding : utf-8 -*-

require 'acceptance_helper'

resource "Загрузки" do
  post "/uploads" do
    parameter :file, "Загрузить файл"

    let(:file) { Rack::Test::UploadedFile.new("spec/fixtures/file.png", "image/png") }

    example_request "Загрузить файл" do
      expect(status).to eq(201)
    end
  end
end
