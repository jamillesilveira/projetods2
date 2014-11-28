require 'test_helper'

class AlunosMailerTest < ActionMailer::TestCase
  test "cadastrado" do
    mail = AlunosMailer.cadastrado
    assert_equal "Cadastrado", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
