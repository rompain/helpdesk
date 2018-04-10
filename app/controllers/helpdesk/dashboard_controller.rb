module Helpdesk
  class DashboardController < ApplicationController


    before_filter :my_tickets

    def index
    end


    def show
    end


    def my_tickets
      @my_tickets = Ticket
      .includes(:comments=>[:author])
      .includes(:requester)
      .includes(:assignee)
      .includes(:ticket_type)
      .where('requester_id = ?', helpdesk_user.id)
    end


  end
end
