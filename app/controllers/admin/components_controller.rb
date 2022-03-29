class Admin::ComponentsController < Admin::BaseController

  def base
  end

  def dashboard
  end

  def pages
  end

  def buttons
  end

  def forms
  end

  def typography
  end

  def chart
  end

  def icons
  end

  def widgets
  end

  def colors
  end

  def base_accordion
  render "admin/components/base/accordion"
  end
  def base_breadcrumb
    render "admin/components/base/breadcrumb"
  end
  def base_cards
    render "admin/components/base/cards"
  end
  def base_carousel
    render "admin/components/base/carousel"
  end
  def base_collapse
    render "admin/components/base/collapse"
  end
  def base_list
    render "admin/components/base/list"
  end
  def base_navs
    render "admin/components/base/navs"
  end
  def base_pagination
    render "admin/components/base/pagination"
  end
  def base_placeholders
    render "admin/components/base/placeholders"
  end
  def base_popovers
    render "admin/components/base/popovers"
  end
  def base_progress
    render "admin/components/base/progress"
  end
  def base_scrollspy
    render "admin/components/base/scrollspy"
  end
  def base_spinners
    render "admin/components/base/spinners"
  end
  def base_tables
    render "admin/components/base/tables"
  end
  def base_tooltips
    render "admin/components/base/tooltips"
  end


  def button_buttons
    render "admin/components/button/buttons"
  end
  def button_button_group
    render "admin/components/button/button_group"
  end
  def button_dropdowns
    render "admin/components/button/dropdowns"
  end

  def form_form_control
    render "admin/components/form/form_control"
  end
  def form_select
    render "admin/components/form/select"
  end
  def form_checks_radios
    render "admin/components/form/checks_radios"
  end
  def form_range
    render "admin/components/form/range"
  end
  def form_input_group
    render "admin/components/form/input_group"
  end
  def form_floating_labels
    render "admin/components/form/floating_labels"
  end
  def form_layout
    render "admin/components/form/layout"
  end
  def form_validation
    render "admin/components/form/validation"
  end

  def icon_free
    render "admin/components/icon/free"
  end
  def icon_brand
    render "admin/components/icon/brand"
  end
  def icon_flag
    render "admin/components/icon/flag"
  end

  def notifications_alerts
    render "admin/components/notifications/alerts"
  end

  def notifications_badge
    render "admin/components/notifications/badge"
  end

  def notifications_modals
    render "admin/components/notifications/modals"
  end

  def notifications_toasts
    render "admin/components/notifications/toasts"
  end

  def page_login
    render "admin/components/pages/login"
  end
  def page_register
    render "admin/components/pages/register"
  end
  def page_404
    render "admin/components/pages/404"
  end
  def page_500
    render "admin/components/pages/500"
  end

end