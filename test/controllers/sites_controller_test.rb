require 'test_helper'

class SitesControllerTest < ActionController::TestCase
  setup do
    @site = sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site" do
    assert_difference('Site.count') do
      post :create, site: { address: @site.address, backgroundcolor: @site.backgroundcolor, city: @site.city, domain: @site.domain, headercarousel: @site.headercarousel, hightlightcolor: @site.hightlightcolor, level: @site.level, phone: @site.phone, reservations: @site.reservations, reviews: @site.reviews, services: @site.services, state: @site.state, styles: @site.styles, subdomain: @site.subdomain, subtitle: @site.subtitle, textcolor: @site.textcolor, title: @site.title, welcomemessage: @site.welcomemessage, zip: @site.zip }
    end

    assert_redirected_to site_path(assigns(:site))
  end

  test "should show site" do
    get :show, id: @site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site
    assert_response :success
  end

  test "should update site" do
    patch :update, id: @site, site: { address: @site.address, backgroundcolor: @site.backgroundcolor, city: @site.city, domain: @site.domain, headercarousel: @site.headercarousel, hightlightcolor: @site.hightlightcolor, level: @site.level, phone: @site.phone, reservations: @site.reservations, reviews: @site.reviews, services: @site.services, state: @site.state, styles: @site.styles, subdomain: @site.subdomain, subtitle: @site.subtitle, textcolor: @site.textcolor, title: @site.title, welcomemessage: @site.welcomemessage, zip: @site.zip }
    assert_redirected_to site_path(assigns(:site))
  end

  test "should destroy site" do
    assert_difference('Site.count', -1) do
      delete :destroy, id: @site
    end

    assert_redirected_to sites_path
  end
end
