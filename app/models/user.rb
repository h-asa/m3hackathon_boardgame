class User < ActiveRecord::Base
  # ------------------------------------------------------------------
  # Relation
  # ------------------------------------------------------------------
  has_many :authentications

  # ------------------------------------------------------------------
  # Public Instance Method
  # ------------------------------------------------------------------
  def twitter
    self.authentications.where(provider: Authentication::PROVIDER_TWITTER).first
  end

  # ------------------------------------------------------------------
  # Private Class Method
  # ------------------------------------------------------------------
  private

  # ユーザ作成
  def self.create_with_auth(authentication, request)
    # ユーザ作成
    user = User.new
    user.name                = (authentication.nickname.presence || authentication.name)
    user.image               = authentication.image    if authentication.image.present?
    user.email               = authentication.email    if authentication.email.present?
    user.last_login_provider = authentication.provider if authentication.provider.present?
    user.last_login_at       = Time.now
    user.user_agent          = request.env['HTTP_USER_AGENT'] rescue 'error'

    # データ保存
    user.save!

    # auth紐付け
    authentication.user_id = user.id
    authentication.save!

    return user
  end
end
