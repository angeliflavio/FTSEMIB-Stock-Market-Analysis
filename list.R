# get 40 stocks of the FTSEMIB
list <- c('A2A.MI','AMP.MI','ATL.MI','AZM.MI','BGN.MI','BMED.MI',
          'BAMI.MI','BPE.MI','BRE.MI','BZU.MI','CPR.MI',
          'CNHI.MI','ENEL.MI','ENI.MI','EXO.MI','RACE.MI',
          'FCA.MI','FBK.MI','G.MI','ISP.MI','IG.MI',
          'LDO.MI','LUX.MI','MS.MI','MB.MI','MONC.MI',
          'PST.MI','PRY.MI','RACE.MI','REC.MI','SPM.MI','SFER.MI',
          'SRG.MI','STM.MI','TIT.MI','TEN.MI','TRN.MI',
          'UBI.MI','UCG.MI','UNI.MI','US.MI','YNAP.MI')

#list of 40 stocks
list_names <- c('A2A','Amplifon','Atlantia','Azimut','Banca Generali','Banca Mediolanum',
                'Banco BPM','BPER Banca','Brembo','Buzzi Unicem','Campari',
                'CNH Industrial','Enel','Eni','Exor','Ferrari',
                'FCA','FinecoBank','Generali','Intesa SanPaolo','Italgas',
                'Banca Leonardo','Luxottica','Mediaset','Mediobanca','Moncler',
                'Poste Italiane','Prysmian','Ferrari','Recordati','Saipem','Salvatore Ferragamo',
                'Snam','STMicroelectronics','Telecom Italia','Tenaris','Terna',
                'UBI','Unicredit','Unipol','UnipolSai Assicurazioni','Yoox')

#assign names to list of codes
names(list) <- list_names
