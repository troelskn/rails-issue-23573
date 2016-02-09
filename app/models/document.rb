class Document
  def id
    42
  end

  def to_io
    # Just for testing
    File.open(Rails.root.join("dummy.pdf"), "r")
  end
end
