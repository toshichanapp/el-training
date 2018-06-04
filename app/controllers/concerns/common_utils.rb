module CommonUtils
  def require_valid_params(instance)
    return if instance.valid?
    flash.now[:danger] = instance.errors.full_messages
    case params[:action].to_sym
      when :create
        return render :new
      when :update
        return render :edit
    end
  end
end