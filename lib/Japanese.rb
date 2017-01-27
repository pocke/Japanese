require "Japanese/version"

module Japanese
end

alias $例外の情報 $!
alias $例外のバックトレース $@
alias $分割の際の区切り文字 $;
alias $結合の際の区切り文字 $,
alias $入力レコードの区切り文字 $/
alias $出力レコードの区切り文字 $\
alias $最後に読み込まれた行番号 $.
alias $最後に読み込まれた行 $_
alias $デフォルトの出力先 $>
alias $デフォルトの入力元 $<
alias $プロセスID $$
alias $子プロセスのステータス $?
alias $最後にマッチした情報 $~
alias $コマンドライン引数 $*
alias $最後にマッチした文字列 $&
alias $マッチの前の文字列 $`
alias $マッチの後の文字列 $'
alias $マッチの最後の括弧内の文字列 $+


# XXX: $= is not aliased.
