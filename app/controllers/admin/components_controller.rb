# frozen_string_literal: true

module Admin
  class ComponentsController < Admin::BaseController
    def base; end

    def dashboard; end

    def pages; end

    def buttons; end

    def forms; end

    def typography; end

    def charts; end

    def icons; end

    def widgets; end

    def colors; end

    def base_accordion
      render 'admin/components/base/accordion'
    end

    def base_breadcrumb
      render 'admin/components/base/breadcrumb'
    end

    def base_cards
      render 'admin/components/base/cards'
    end

    def base_carousel
      render 'admin/components/base/carousel'
    end

    def base_collapse
      render 'admin/components/base/collapse'
    end

    def base_list
      render 'admin/components/base/list'
    end

    def base_navs
      render 'admin/components/base/navs'
    end

    def base_pagination
      render 'admin/components/base/pagination'
    end

    def base_placeholders
      render 'admin/components/base/placeholders'
    end

    def base_popovers
      render 'admin/components/base/popovers'
    end

    def base_progress
      render 'admin/components/base/progress'
    end

    def base_scrollspy
      render 'admin/components/base/scrollspy'
    end

    def base_spinners
      render 'admin/components/base/spinners'
    end

    def base_tables
      render 'admin/components/base/tables'
    end

    def base_tooltips
      render 'admin/components/base/tooltips'
    end

    def base_toast
      render 'admin/components/base/toast'
    end

    def button_buttons
      render 'admin/components/button/buttons'
    end

    def button_button_group
      render 'admin/components/button/button_group'
    end

    def button_dropdowns
      render 'admin/components/button/dropdowns'
    end

    def form_form_control
      render 'admin/components/form/form_control'
    end

    def form_select
      render 'admin/components/form/select'
    end

    def form_checks_radios
      render 'admin/components/form/checks_radios'
    end

    def form_range
      render 'admin/components/form/range'
    end

    def form_input_group
      render 'admin/components/form/input_group'
    end

    def form_floating_labels
      render 'admin/components/form/floating_labels'
    end

    def form_layout
      render 'admin/components/form/layout'
    end

    def form_validation
      render 'admin/components/form/validation'
    end

    def icon_free
      render 'admin/components/icon/free'
    end

    def icon_brand
      render 'admin/components/icon/brand'
    end

    def icon_flag
      render 'admin/components/icon/flag'
    end

    def notifications_alerts
      render 'admin/components/notifications/alerts'
    end

    def notifications_badge
      render 'admin/components/notifications/badge'
    end

    def notifications_modals
      render 'admin/components/notifications/modals'
    end

    def notifications_toasts
      render 'admin/components/notifications/toasts'
    end

    def page_login
      render 'admin/components/pages/login'
    end

    def page_register
      render 'admin/components/pages/register'
    end

    def page_404
      render 'admin/components/pages/404'
    end

    def page_500
      render 'admin/components/pages/500'
    end

    def stimulus_animated_number
      render "admin/components/stimulus/stimulus_animated_number"
    end
    def stimulus_notification
      render "admin/components/stimulus/stimulus_notification"
    end
    def stimulus_reveal_controller
      render "admin/components/stimulus/stimulus_reveal_controller"
    end
    def stimulus_carousel
      render "admin/components/stimulus/stimulus_carousel"
    end
    def stimulus_password_visibility
      render "admin/components/stimulus/stimulus_password_visibility"
    end
    def stimulus_scroll_progress
      render "admin/components/stimulus/stimulus_scroll_progress"
    end
    def stimulus_character_counter
      render "admin/components/stimulus/stimulus_character_counter"
    end
    def stimulus_places_autocomplete
      render "admin/components/stimulus/stimulus_places_autocomplete"
    end
    def stimulus_scroll_reveal
      render "admin/components/stimulus/stimulus_scroll_reveal"
    end
    def stimulus_chartjs
      render "admin/components/stimulus/stimulus_chartjs"
    end
    def stimulus_popover
      render "admin/components/stimulus/stimulus_popover"
    end
    def stimulus_scroll_to
      render "admin/components/stimulus/stimulus_scroll_to"
    end
    def stimulus_checkbox_select_all
      render "admin/components/stimulus/stimulus_checkbox_select_all"
    end
    def stimulus_prefetch
      render "admin/components/stimulus/stimulus_prefetch"
    end
    def stimulus_sortable
      render "admin/components/stimulus/stimulus_sortable"
    end
    def stimulus_clipboard
      render "admin/components/stimulus/stimulus_clipboard"
    end
    def stimulus_rails_autosave
      render "admin/components/stimulus/stimulus_rails_autosave"
    end
    def stimulus_textarea_autogrow
      render "admin/components/stimulus/stimulus_textarea_autogrow"
    end
    def stimulus_content_loader
      render "admin/components/stimulus/stimulus_content_loader"
    end
    def stimulus_rails_nested_form
      render "admin/components/stimulus/stimulus_rails_nested_form"
    end
    def stimulus_timeago
      render "admin/components/stimulus/stimulus_timeago"
    end
    def stimulus_dropdown
      render "admin/components/stimulus/stimulus_dropdown"
    end
    def stimulus_read_more
      render "admin/components/stimulus/stimulus_read_more"
    end
    def stimulus_lightbox
      render "admin/components/stimulus/stimulus_lightbox"
    end
    def stimulus_remote_rails
      render "admin/components/stimulus/stimulus_remote_rails"
    end

    def load_more
      render "admin/components/example/load_more", layout: false
    end

    def popover_card
      render partial: 'admin/components/example/popover_card'
    end
  end
end
