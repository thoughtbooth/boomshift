  private
    def set_invoicing_line_item
      @invoice = InvoicingLineItem.find(params[:id])
    end
  
    def invoicing_line_item_params
      params.require(:invoicing_line_item).permit(:type, :net_amount, :description, :net_amount, :quantity, :creator_id)
    end