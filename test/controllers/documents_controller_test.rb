class DocumentsControllerTest < ActionDispatch::IntegrationTest
  test "can download a document" do
    get document_url(1)
    assert_response :success
    assert_equal 'application/pdf', headers['Content-Type']
  end
end
