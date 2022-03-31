dim words(40), sorteados(10)
dim level, hits, scores, heard, jumped, player, sorteado, sorteio_,n


'Preenchendo arrays
words(1) = "ano"
words(2) = "cabo"
words(3) = "fita"
words(4) = "dia"
words(5) = "rei"
words(6) = "gato"
words(7) = "rato"
words(8) = "mosca"
words(9) = "tela"
words(10) = "laço"

words(11) = "cachorro"
words(12) = "mosquito"
words(13) = "positivo"
words(14) = "negativo"
words(15) = "alface"
words(16) = "morango"
words(17) = "guitarra"
words(18) = "gaveta"
words(19) = "musgo"
words(20) = "navegador"

words(21) = "pirata"
words(22) = "mulher"
words(23) = "homem"
words(24) = "sapato"
words(25) = "desenho"
words(26) = "chiclete"
words(27) = "pirulito"
words(28) = "festa"
words(29) = "regra"
words(30) = "paraclorobenzilpirrolidinonetilbenzimidazol"

words(31) = "admoesta"
words(32) = "fenecimento"
words(33) = "anticonstitucionalmente"
words(34) = "hexanitrodifenilamina"
words(35) = "meningoencefalomielite"
words(36) = "interconfessionalismo"
words(37) = "traquelatloidoccipital"
words(38) = "fotocromometalografia"
words(39) = "traquelatloidoccipital"
words(40) = "preterintencionalidade"

level = 1

sub init_round()
hits = 0
scores = 0
heard = 0
jumped = 0
end sub

call carregar_voz
sub carregar_voz()
	set audio = createobject("SAPI.SPVOICE")
	audio.volume = 100
	audio.rate = 2
end sub

sub rando()
	randomize(second(time))
	n=int(rnd * 10) + 20
end sub

sub ja_sorteado()
	sorteado = 0
	for i=1 to 10 step +1

		if sorteados(i) = n then
			i = 11
			sorteado = 1
		else
			i=i+1
		end if
	next
end sub
sorteio_ = 1
call sorteio
sub sorteio()
call rando
msgbox(n)
call ja_sorteado()
if sorteado = 0 then
	sorteados(sorteio_) = n
	msgbox("ok")
end if



for i=1 to 10 step +1
	msgbox(sorteados(i))
next
end sub




