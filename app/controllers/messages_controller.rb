class MessagesController < ApplicationController
  def index
  end

  def show  
    begin  
      @message = Message.find_by_short_url(params[:id])
      @message.destroy
    rescue Exception => e
       flash[:error] = "Message doesn't exist. Someone may have redeemed it already"
       redirect_to(:action => 'new')
    end
  end

  def new 
    @message = Message.new   
    respond_to do |format|
      format.html
    end
  end

  def create
    @message = Message.new(params[:message])
    logger.debug "New message: #{@message.attributes.inspect}"
    success = @message && @message.save
    if success && @message.errors.empty?
        logger.debug "Does it have an id yet? #{@message.id}"
        @message.short_url = Base58.encode(@message.id + 1021)
        @message.save
       redirect_to(:action => 'confirm', :id => @message.id)
       flash[:notice] = 'Your message has been saved!'
     else
       flash[:error] = 'Oops! We couldn\'t save your message!'
       render(:action => 'new')
    end
  end
  
  def confirm
    @message = Message.find(params[:id])
  end

end
