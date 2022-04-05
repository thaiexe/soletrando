dim palavras(40), sorteadas(5)
dim audio, nivel, acertos, pontos, ouvir_, pulo, inc_nivel, sorteada, n, palavra
dim resp

sub carregar_voz()
	set audio=CreateObject("SAPI.SPVOICE")
    audio.volume = 100
    audio.rate = 2
  
end sub

sub carregar_palavras()
palavras(1) = "ano"
palavras(2) = "cabo"
palavras(3) = "fita"
palavras(4) = "dia"
palavras(5) = "rei"
palavras(6) = "gato"
palavras(7) = "rato"
palavras(8) = "mosca"
palavras(9) = "tela"
palavras(10) = "teia"

palavras(11) = "cachorro"
palavras(12) = "mosquito"
palavras(13) = "positivo"
palavras(14) = "negativo"
palavras(15) = "alface"
palavras(16) = "morango"
palavras(17) = "guitarra"
palavras(18) = "gaveta"
palavras(19) = "musgo"
palavras(20) = "navegador"

palavras(21) = "pirata"
palavras(22) = "mulher"
palavras(23) = "homem"
palavras(24) = "sapato"
palavras(25) = "desenho"
palavras(26) = "chiclete"
palavras(27) = "pirulito"
palavras(28) = "festa"
palavras(29) = "regra"
palavras(30) = "paraclorobenzilpirrolidinonetilbenzimidazol"

palavras(31) = "admoesta"
palavras(32) = "fenecimento"
palavras(33) = "anticonstitucionalmente"
palavras(34) = "hexanitrodifenilamina"
palavras(35) = "meningoencefalomielite"
palavras(36) = "interconfessionalismo"
palavras(37) = "traquelatloidoccipital"
palavras(38) = "fotocromometalografia"
palavras(39) = "traquelatloidoccipital"
palavras(40) = "preterintencionalidade"
end sub

sub iniciar_rodada()
acertos = 0
ouvir_ = 0
pulo = 0
end sub
sub sortear()
	call incremento_nivel
	for i=1 to 5 step +1
		call sortear_palavra
		sorteadas(i) = n
	next 
end sub

sub sortear_palavra()
	sorteada = 1
	While sorteada = 1
		randomize(second(time))
		n=int(rnd * 10) + inc_nivel 
		call palavra_sorteada(n)
	Wend
end sub

sub palavra_sorteada(n)
	
	for i=1 to 5 step +1
		
		if sorteadas(i) = n then
			sorteada = 1
			exit Sub
		else
			sorteada = 0
		end if
	next
end sub

sub incremento_nivel()
	select case nivel
	case 1
		inc_nivel = 1
	case 2
		inc_nivel = 11 
	case 3 
		inc_nivel = 21 
	case else
		inc_nivel = 31
	end select
end sub

sub ouvir(palavra)
    audio.speak(palavra)
end sub

sub encerrar()
	resp = InputBox("Deseja abandonar o jogo?" + vbNewLine & _ 
					"[S]Sim" + vbNewLine & _
					"[N]Nao", "Atencao")
	if ucase(resp) = "S" then
		wscript.quit
	else 
		call menu
	end if
end sub

sub menu()
resp = InputBox("*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=" + vbnewline & _
				"[O]Ouvir a palavra novamente " + vbNewLine & _ 
				"[P]Pular a palavra           " + vbNewLine & _ 
				"[E]Encerrar o jogo           " + vbNewLine & _ 
				"*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=", "SOLETRANDO")
call valida_menu
end sub

sub valida_menu()
	select case ucase(resp)
	case "O"
		if (ouvir_ = 0) then
			ouvir_ = 1
			call ouvir(palavra)
			call menu
		else
			msgbox("Voce ja ouviu novamente durante essa rodada")
			call menu
		end if
	case "P"
		if (pulo = 0) then
			pulo = 1
			msgbox("Voce pulou uma palavra")
		else
			msgbox("Voce ja pulou demais")
			call menu
		end if
	case "E"
		call encerrar()
	end select
end sub

call jogar
sub jogar()
	call carregar_voz
	call carregar_palavras
	call iniciar_rodada
	nivel = 1
	call sortear
	for i=1 to 5 step +1
		palavra = palavras(sorteadas(i))
		call ouvir(palavra)
		call menu
	next 
end sub
