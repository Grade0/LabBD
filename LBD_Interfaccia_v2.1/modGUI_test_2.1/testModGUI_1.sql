create or replace procedure testModGUI_1 is
begin
  modGUI.APRIPAGINA('Prova',1);

  modGUI.CREAMENUBACKOFFICE(1);
  modGUI.INTESTAZIONE(1,'Prova Nuovo ModGUI');

  --APRE UNA FORM VISUALE
  modGUI.APRIFORM(Costanti.root || 'testmodGUI_1','form',1);



  ---AGGIUNGE UNA TEXBOX DI TIPO 'CF'
  modGUI.CASELLADITESTO('Codice_Fiscale','Codice Fiscale',suggerimento=>'Inserisci il codice fiscale',tipo=>'Alfa',center=>false);  

  --AGGIUNGE UNA TEXTBOX DI TIPO TEXT, DI LUNGHEZZA MAX 5 E OBBLIGATORIA 
  modGUI.CASELLADITESTO('Nome','Nome(max 5 lettere)*',suggerimento=>'Inserisci il nome',lunghezzaMax=>'5',tipo=>'text',require=>true,center=>false);

  --AGGIUNGE UNA TEXTBOX DI TIPO NUMBER
  modGUI.CASELLADITESTO('Età','Età',suggerimento=>'Inserisci età',tipo=>'number',center=>false);

  --AGGIUNGE UN CAMPO DI TIPO MAIL OBBLIGATORIO
  modGUI.CASELLADITESTO('Mail','Mail *',suggerimento=>'Inserisci la mail ',tipo=>'mail',require=>true,center=>false);

  ---AGGIUNGE UN CAMPO PASSWORD OBBLIGATORIO
  modGUI.CAMPOPASSWORD('Password','Password','Inserisci la password',center=>false);


  ---APRE UN BLOCCO CON ETICHETTA CHECKBOX
  modGUI.APRIBLOCCO('CheckBox',center=>false);

  ---AGGIUNGE CHECKBOX
  modGUI.CHECKBOX('Check1','Check1','Valore1',true);
  modGUI.CHECKBOX('Check2','Check2','Valore2',false);

 --VA A CAPO
  modGUI.RITCARRELLO;

  modGUI.CHECKBOX('Check3','Check3','Valore3',false);
  modGUI.CHECKBOX('Check4','Check4','Valore4',true);
  modGUI.CHIUDIBLOCCO;


  --APRE UN BLOCCO CON ETTICHETTA RADIO
  modGUI.APRIBLOCCO('Radio',center=>false);

  modGUI.RADIOBUTTON('Radio1','Radio','Valore1',false);
  modGUI.RADIOBUTTON('Radio2','Radio','Valore2',false);

  modGUI.RITCARRELLO;

  modGUI.RADIOBUTTON('Radio3','Radio','Valore3',false);
  modGUI.RADIOBUTTON('Radio4','Radio','Valore4',false);
  modGUI.CHIUDIBLOCCO;


  --APRE UN BLOCCO CONTENENTE CAMPI DI INPUT SELECT CON ETICHETTA SELECT
  modGUI.APRIBLOCCOSELECT('Select',center=>false);

  modGUI.APRISELECT('Data',center=>false);
  modGUI.AGGIUNGIOPZIONESELECT('1','1');
  modGUI.AGGIUNGIOPZIONESELECT('2','2');
  modGUI.AGGIUNGIOPZIONESELECT('3','3',true);
  modGUI.AGGIUNGIOPZIONESELECT('4','4');
  modGUI.CHIUDISELECT;

  modGUI.APRISELECT('Data',center=>false);
  modGUI.AGGIUNGIOPZIONESELECT('1','1');
  modGUI.AGGIUNGIOPZIONESELECT('2','2');
  modGUI.AGGIUNGIOPZIONESELECT('3','3',true);
  modGUI.AGGIUNGIOPZIONESELECT('4','4');
  modGUI.CHIUDISELECT;

  modGUI.CHIUDIBLOCCOSELECT;


  --APRE UN BLOCCO ANONIMO PER ALLINEARE LA NUOVA RIGA DI CAMPI SELECT
  modGUI.APRIBLOCCOSELECT(center=>false);
  modGUI.APRISELECT('Data',center=>false);
  modGUI.AGGIUNGIOPZIONESELECT('1','1');
  modGUI.AGGIUNGIOPZIONESELECT('2','2');
  modGUI.AGGIUNGIOPZIONESELECT('3','3',true);
  modGUI.AGGIUNGIOPZIONESELECT('4','4');
  modGUI.CHIUDISELECT;

  modGUI.APRISELECT('Data',center=>false);
  modGUI.AGGIUNGIOPZIONESELECT('1','1');
  modGUI.AGGIUNGIOPZIONESELECT('2','2');
  modGUI.AGGIUNGIOPZIONESELECT('3','3',true);
  modGUI.AGGIUNGIOPZIONESELECT('4','4');
  modGUI.CHIUDISELECT;

  modGUI.CHIUDIBLOCCOSELECT;

  --AGGIUNGE UN SELETTORE DATA: NON E' NECESSARIO USARE APRIBLOCCOSELECT
  modGUI.SELETTOREDATA(etichetta=>'Data di Nascita',dataDefault=>CURRENT_DATE,center=>false);

  --AGGIUNGE UNA TEXTAREA 
  modGUI.AREADITESTO('Descrizione','Descrizione',center=>false);

  ---APRE UN BLOCCO ANONIMO PER ALLINEARE IL BOTTONE CON GLI ALTRI CAMPI
  modGUI.APRIBLOCCO(center=>false); 
  modGUI.BOTTONEFORM(valida=>true,nomeForm=>'form');
  modGUI.CHIUDIBLOCCO;


  modGUI.CHIUDIFORM;

  modGUI.CHIUDIPAGINA;

end testModGUI_1;