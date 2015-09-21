require 'rails_helper'

describe StaticPagesController, :type => :controller  do

	describe "GET #index" do
		it "responds successfully with an HTTP 200 status code" do
			get :index
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end

		it "renders the index template" do
			get :index
			expect(response).to render_template("index")
		end
	end

	describe "GET /about" do
		it "responds successfully with an HTTP 200 status code" do
			get :about
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end

		it "renders the about template" do
			get :about
			expect(response).to render_template("about")
		end
	end

	describe "GET /landing_page" do
		it "responds successfully with an HTTP 200 status code" do
			get :landing_page
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end

		it "renders the landing_page template" do
			get :landing_page
			expect(response).to render_template("landing_page")
		end
	end

	describe "GET /contact" do
		it "responds successfully with an HTTP 200 status code" do
			get :contact
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end

		it "renders the contact template" do
			get :contact
			expect(response).to render_template("contact")
		end
	end

	describe "Send contact message" do
		before do
			@name = "Example Name"
			@email = "example@example.com"
			@message = "example message"
		end

		it "successfully delivers message" do
			expect{ thank_you }.to equal{ UserMailer.contact_form(@email, @name, @message).deliver }
		end

	end
end

