class Packet < Service
  private

  def set_kind
    self.kind = 'packet'
  end
end
