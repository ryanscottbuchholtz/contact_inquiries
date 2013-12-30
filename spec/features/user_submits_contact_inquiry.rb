require 'spec_helper'

feature "User submits a contact inquiry", %q{
  As a site visitor
  I want to contact the site's staff
  So that I can tell them how awesome they are
  } do

    # Acceptance Criteria
    # *I must specify a valid email address
    # *I must specify a subject
    # *I must specify a description
    # *I must specify a first name
    # *I must specify a last name

    context "with valid attributes - happy path" do
      it "creates a contact inquiry" do

        visit "/inquiries/new"

        fill_in "Email address", with: "ryanscottbuchholtz@gmail.com"
        fill_in "Subject", with: "Awesome!"
        fill_in "Description", with: "Yup, you guys are awesomesauce."
        fill_in "First name", with: "Ryan"
        fill_in "Last name", with: "Buchholtz"

        click_on "Create Inquiry"

        expect(page).to have_content "Inquiry was successfully submitted."
      end
    end

    context "with invalid attributes" do
      it "sees errors for invalid attributes" do

        visit "/inquiries/new"

        click_on "Create Inquiry"

        expect(page).to have_content "Email address can't be blank"
        expect(page).to have_content "Subject can't be blank"
        expect(page).to have_content "Description can't be blank"
        expect(page).to have_content "First name can't be blank"
        expect(page).to have_content "Last name can't be blank"

      end
    end

    context "mostly happy path" do
      it "creates a contact inquiry but forgets first name" do

        visit "/inquiries/new"

        fill_in "Email address", with: "ryanscottbuchholtz@gmail.com"
        fill_in "Subject", with: "Awesome!"
        fill_in "Description", with: "Yup, you guys are awesomesauce."
        fill_in "Last name", with: "Buchholtz"

        click_on "Create Inquiry"

        expect(page).to have_content "First name can't be blank"
      end
    end

  end