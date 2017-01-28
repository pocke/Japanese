require 'Japanese'

require 'stringio'
require 'minitest/autorun'
require 'minitest-power_assert'

class JapaneseTest < MiniTest::Unit::TestCase
  def test_例外
    ex = StandardError.new('error')
    begin
      raise ex
    rescue
      assert{ex == $例外の情報}
      assert{$例外のバックトレース.is_a? Array}
    end
  end

  def test_分割の際の区切り文字
    back = $分割の際の区切り文字
    $分割の際の区切り文字 = /\d/

    assert{"a 4b2c".split == ['a ', 'b', 'c']}
  ensure
    $分割の際の区切り文字 = back
  end

  def test_結合の際の区切り文字
    back = $結合の際の区切り文字
    $結合の際の区切り文字 = 'にゃん'

    assert{%w[a b c].join == 'aにゃんbにゃんc'}
  ensure
    $結合の際の区切り文字 = back
  end

  def test_入力レコードの区切り文字
    io = StringIO.new(<<-EOF)
foobar--
neko--
cat
    EOF
    back = $入力レコードの区切り文字
    $入力レコードの区切り文字 = '--'

    gets = io.gets
    $入力レコードの区切り文字 = back
    assert{gets == 'foobar--'}
  ensure
    $入力レコードの区切り文字 = back
  end

  def test_マッチ
    "うしこねこさるいぬ" =~ /こ(ねこ)/

    assert{$最後にマッチした文字列 == 'こねこ'}
    assert{$マッチの前の文字列 == 'うし'}
    assert{$マッチの後の文字列 == 'さるいぬ'}
    assert{$マッチの最後の括弧内の文字列 == 'ねこ'}
  end
end
