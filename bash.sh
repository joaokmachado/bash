/bin/bash

principal() {                                # Função principal do programa
    clear                                    # Limpa a tela
    echo "[1] Copiar arquivos com RSYNC"     # imprime na tela as opçoes do menu 
    echo "[2] Copiar arquivos com SCP" 
    echo "[3] fechar" 
                                                                                                      
    echo
    echo -n "Qual a sua opção?"
    read opcao          		# Lê a variável "opção", 
                        		
    case $opcao in
        1)            		
            clear
            num_1 ;;    		# executa a opção da "num_1" 
        		
        2)
            clear
            num_2 ;;	                # executa a opção "nun_2" 

        3)
            clear
            exit ;;

        *)              	         
                        	        # Nenhuma das opções foi digitada
            clear
            echo "Opção invalida"
            read pause
            principal   	        # Retorna ao menu 
            ;;
    esac
}
 
num_1() {             					                      # nun_1 entra no case 
    clear               					              # limpar tela
    echo "[1] Copia do arquivo de localxlocal com RSYNC"             # Mostra as opçoes na tela
    echo "[2] Copia do arquivo de localxremoto com RSYNC"              
    echo "[3] Copia do arquivo de remotoxlocal com RSYNC" 
    echo "[4] Sair"                       
    echo                                                                      
    echo -n "Escolha sua opção?"
    read opcao1          		# le a variavel opcao1", 
                        		
                        		
    case $opcao1 in
        1)              		
            clear
            num_t1 ;;   # executa função fun_t1 	
                        		
        2)
            clear
            num_t2 ;;	# executa função fun_t2 
        
        3)
            clear
            num_t3 ;;	# executa a função fun_t3 

        4)
            clear
            exit;; 
        
       
        *)              	 
                        	# valor diferente das opções
            clear
            echo "opção incorreta"
            read pause
            principal   	# retorna ao menu 
            ;;
    esac
}

num_t1() {             					# copia de arquivos com rsync local x local
    clear
    echo "nome do arquivo e o lugar que ele esta salvo" 					# mostrar a mensagem na tela	
    read arq_1;				                                                        # grava a palavra  
    echo "digite o destino do arquivo"		                                       	    # mostra a mensagem na tela
    read destino_1;					                                         # grava a palavra 
    rsync -avr --progress $arq_1 $destino_1   	    
    read pause
    principal
}



num_t2() {             					# copia de arquivos com rsync local x remoto
    clear
    echo "nome do arquivo e o lugar que ele esta salvo" 	# mostrar mensagem na tela		
    read arquivo_1;				       		# grava a palavra 
    echo "informe o caminho para o destino"		        # mostrar mensagem na tela
    read destino_1;						# grava a palavra 
    echo "digite o usuário do cpu remoto"		        # mostrar mensagem na tela
    read pc_1;   					        # grava a palavra 
    echo "digite o ip do cpu remoto"		                # mostrar mensagem na tela	
    read ip_1;						        # grava a palavra 
    echo "qual a porta ssh usada"				# mostrar mensagem na tela
    read ssh_3;						        # grava a palavra 
    rsync -avr --progress -e $arquivo_1  "ssh -p$ssh_3" "$pc_1@$ip_1:$destino_1   	    
    read pause
    principal
}

num_t3() {             					# copia de arquivos com rsync remoto x local
    clear
    								# grava a palavra 
    echo "digite o usuário do cpu remoto"		        # mostrar mensagem na tela
    read pc_2;   					        # grava a palavra 
    echo "digite o ip do cpu remoto"		                # mostrar mensagem na tela	
    read ip_2;						        # grava a palavra 
    echo "qual a porta ssh usada"				# mostrar mensagem na tela
    read ssh_4;
    echo "nome do arquivo e o lugar que ele esta salvo" 	# mostrar mensagem na tela		
    read arquivo_2;				       		# grava a palavra 
    echo "informe o caminho para o destino"		        # mostrar mensagem na tela
    read destino_2;					        # grava a palavra 
    rsync -avr --progress -e "ssh -p$ssh_3" "$pc_1@$ip_1:$destino_1 $arquivo_1  	    
    read pause
    principal
}

opcao_diferente() {      #funçao de opcao diferente
    clear 
    echo "opcao diferente"
    read pause
principal
}

num_2() {             					
    clear                                                                # limpa tela
    echo "[1] Copia do arquivo de localxlocal com SCP"            	# executa opcoes na tela
    echo "[2] Copia do arquivo de localxremoto com SCP"                    
    echo "[3] Copia da arquivo de remotoxlocal com SCP"                     
    echo "[4] fechar"                                                                      
    echo
    echo -n "Digite sua opção?"
    read opcao2          		# le varivel "opcao", 
                        		     		
                        		
    case $opcao2 in
        1)              		
            clear
            num_sll ;;    		# executa a função num_sll 

                        		
        2)
            clear
            num_lr ;;	                # executa a função num_slr
       
        3)              		
            clear
            num_Srl ;;    		# uexecuta a função num_srl"

                        		
        4)
            clear
            exit ;;			# finalizar a escolha

               
        *)              	         
                        	        # valor diferente das opçoes
            clear
            echo "opcao incorreta"
            read pause
            principal   	        # retorne ao menu
            ;;
    esac
}

num_Sll() {             					# função da opcao para copia de arquivos com scp localxlocal
    clear
    echo "nome do arquivo e o lugar que ele esta salvo "       # mostrar mensagem na tela		
    read arquivo_ll;				               # grava a palavra
    echo "digite o destino do arquivo"		       	       # mostrar mensagem na tela
    read destino_ll;					       # grava a palavra 
    scp  $arquivo_ll $destino_ll   	    
    read pause
    principal
}

num_slr() {             					# função da opcao para copia de arquivos com scp localxremoto
    clear
    echo "nome do arquivo e o lugar que ele esta salvo" 	# mostrar mensagem na tela		
    read arquivo_lr;				       		# grava a palavra 
    echo "digite o destino do arquivo"		        # mostrar mensagem na tela
    read destino_lr;						# grava a palavra 
    echo "digite o usuário do cpu remoto"		        # mostrar mensagem na tela
    read pc_r1;   					        # grava a palavra 
    echo "digite o ip do cpu remoto"		                # mostrar mensagem na tela	
    read ip_r1;						        # grava a palavra 
    echo "qual a porta ssh usada"				# mostrar mensagem na tela
    read ssh_1;						        # grava a palavra 
    scp  -P$ssh_1  $arquivo_lr $pc_r1@$ip_r1:$destino_lr    	    
    read pause
    principal
}

num_srl() {             					# função da opcao para copia de arquivos com scp remotoxlocal
    clear
    								# grava a palavra 
    echo "digite o usuário do cpu remoto"		        # mostrar mensagem na tela
    read pc_r2;   					        # grava a palavra 
    echo "digite o ip do cpu remoto"		                # mostrar mensagem na tela	
    read ip_r2;						        # grava a palavra 
    echo "qual a porta ssh usada"				# mostrar mensagem na tela
    read ssh_2;
    echo "nome do arquivo e o lugar que ele esta salvo" 	# mostrar mensagem na tela		
    read arquivo_rl;				       		# grava a palavra 
    echo "informe o caminho para o destino"		        # mostrar mensagem na tela
    read destino_rl;					        # grava a palavra 
    scp  -P$ssh_2  $arquivo_rl $pc_r2@$ip_r2:$destino_rl   	    
    read pause
    principal
}

opcao_incorreta() {      #funçao de opcao incorreta
    clear 
    echo "opcao incorreta"
    read pause
principal
}





