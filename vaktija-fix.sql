UPDATE takvim SET datum = ADDDATE(datum, INTERVAL 1 YEAR);


UPDATE takvim SET zora=ADDTIME(zora, SEC_TO_TIME(3600)), izlazaksunca=ADDTIME(izlazaksunca, SEC_TO_TIME(3600)), podne=ADDTIME(podne, SEC_TO_TIME(3600)), ikindija=ADDTIME(ikindija, SEC_TO_TIME(3600)), aksam=ADDTIME(aksam, SEC_TO_TIME(3600)), jacija=ADDTIME(jacija, SEC_TO_TIME(3600)) WHERE datum='2014-03-30';


UPDATE takvim SET zora=SUBTIME(zora, SEC_TO_TIME(3600)), izlazaksunca=SUBTIME(izlazaksunca, SEC_TO_TIME(3600)), podne=SUBTIME(podne, SEC_TO_TIME(3600)), ikindija=SUBTIME(ikindija, SEC_TO_TIME(3600)), aksam=SUBTIME(aksam, SEC_TO_TIME(3600)), jacija=SUBTIME(jacija, SEC_TO_TIME(3600)) WHERE datum='2014-10-26';

('2020-02-29','04:44:00','06:19:00','12:00:00','15:02:00','17:39:00','19:04:00')