class StaticPagesController < ApplicationController
  def home
      @info = Info.first;
      if cookies[:user_type].nil?
         cookies[:user_type] = 2;
      end
  end
   
  def admin
      @msg = "";
      @info = Info.first;
  end
  
  def converter
      @rate = Info.first.rate;
      if cookies[:user_type].nil?
         cookies[:user_type] = 2;
      end
  end
   
  def what
  end
   
  def update_field
      hash = {params[:field] => params[:val]};
      Info.first.update_attributes(hash);
      render nothing: true;
  end

  #could get to this by ajax post instead of form ...
  def update_rate
      Info.first.update_attributes(rate: params[:rate][:Rate].to_f);
      @msg = "Success";
      render 'static_pages/admin';
  end
end
