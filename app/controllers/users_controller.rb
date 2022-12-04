def create
  @user = User.new(user_params)
  if @user.save
    log_in @user # 保存成功後、ログインします。
    flash[:success] = '新規作成に成功しました。'
    redirect_to @user
  else
    render :new
  end
end