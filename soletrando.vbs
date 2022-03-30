dim levelOne(10), levelTwo(10), levelthree(10), levelFour(10), randomWords(10)
dim level, hits, scores, heard, jumped, player


'Preenchendo arrays
levelOne(1) = "ano"
levelOne(2) = "cabo"
levelOne(3) = "fita"
levelOne(4) = "dia"
levelOne(5) = "rei"
levelOne(6) = "gato"
levelOne(7) = "rato"
levelOne(8) = "mosca"
levelOne(9) = "tela"
levelOne(10) = "laço"

levelTwo(1) = "cachorro"
levelTwo(2) = "mosquito"
levelTwo(3) = "positivo"
levelTwo(4) = "negativo"
levelTwo(5) = "alface"
levelTwo(6) = "morango"
levelTwo(7) = "guitarra"
levelTwo(8) = "gaveta"
levelTwo(9) = "musgo"
levelTwo(10) = "navegador"

levelthree(1) = "pirata"
levelthree(2) = "mulher"
levelthree(3) = "homem"
levelthree(4) = "sapato"
levelthree(5) = "desenho"
levelthree(6) = "chiclete"
levelthree(7) = "pirulito"
levelthree(8) = "festa"
levelthree(9) = "regra"
levelthree(10) = "paraclorobenzilpirrolidinonetilbenzimidazol"

levelFour(1) = "admoesta"
levelFour(2) = "fenecimento"
levelFour(3) = "anticonstitucionalmente"
levelFour(4) = "hexanitrodifenilamina"
levelFour(5) = "meningoencefalomielite"
levelFour(6) = "interconfessionalismo"
levelFour(7) = "traquelatloidoccipital"
levelFour(8) = "fotocromometalografia"
levelFour(9) = "traquelatloidoccipital"
levelFour(10) = "preterintencionalidade"

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



