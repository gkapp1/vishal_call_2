require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have content 'Vishal'" do
      visit 'root_path'
      expect(page).to have_content('Vishal')
    end
  
    it "should have the right title" do
      visit 'root_path'
      expect(page).to have_title("Vishal Call App")
    end
    
    it "should not have a custom page title" do
      visit 'root_path'
      expect(page).not_to have_title(' | Home')
    end
  end
  
  describe "Call completed page" do
    
    it "should say 'Congratulations'" do
     visit 'success_path'
      expect(page).to have_content('Congratulations')
    end
    
    it "should have the right title" do
      visit 'success_path'
      expect(page).to have_title("Vishal Call App | Success")
    end
  end
  
end
