@ ECHO.
@ ECHO.
@ ECHO.        说 明
@ ECHO --------------------------------------------------------------------------
@ ECHO 禁用多余服务项，让win7只做有用的事情！
@ ECHO 此设置适合普通用户，更新于09.10.09
@ ECHO 有疑问请联系QQ：309505670.
@ ECHO --------------------------------------------------------------------------
@ ECHO.
@echo off
echo 服务优化正在处理，请稍等......
@echo
@pause
sc config ALG start= disabled
sc config AeLookupSvc start= DEMAND
sc config AppMgmt start= disabled
sc config BITS start= disabled
sc config BFE start= disabled
sc config BDESVC start= disabled
sc config bthserv start= disabled
sc config Browser start= disabled
sc config CertPropSvc start= disabled
sc config CscService start= disabled
sc config Dnscache start= disabled
sc config DPS start= disabled
sc config dot3svc start= disabled
sc config eventlog start= DEMAND
sc config Fax start= disabled
sc config FontCache start= DEMAND
sc config fdPHost start= disabled
sc config ftpsvc start= disabled
sc config FDResPub start= disabled
sc config hidserv start= disabled
sc config HomeGroupListener start= disabled
sc config HomeGroupProvider start= disabled
sc config iphlpsvc start= disabled
sc config IKEEXT start= disabled
sc config IPBusEnum start= disabled
sc config idsvc start= disabled　
sc config KtmRm start= disabled
sc config NetTcpActivator start= disabled
sc config MSiSCSI start= disabled
sc config MpsSvc start= disabled
sc config NetTcpPortSharing start= disabled
sc config Netlogon start= disabled
sc config LanmanServer start= disabled
sc config lmhosts start= disabled
sc config VSS start= disabled
sc config LanmanWorkstation start= disabled
sc config DPS start= DEMAND
sc config WdiSystemHost start= disabled
sc config COMSysApp start= DEMAND
sc config PNRPsvc start= disabled
sc config p2psvc start= disabled
sc config p2pimsvc start= disabled
sc config PcaSvc start= DEMAND
sc config PolicyAgent start= disabled　
sc config ProtectedStorage start= DEMAND
sc config QWAVE start= disabled
sc config RemoteRegistry start= disabled
sc config RemoteAccess start= disabled
sc config Spooler start= disabled
sc config SDRSVC start= disabled
sc config swprv start= disabled
sc config seclogon start= disabled
sc config SharedAccess start= disabled
sc config SCPolicySvc start= disabled
sc config SSDPSRV start= disabled
sc config SCardSvr start= disabled
sc config SNMPTRAP start= disabled
sc config StiSvc start= disabled
sc config SensrSvc start= disabled
sc config SharedAccess start= disabled
sc config TabletInputService start= disabled
sc config TBS start= disabled
sc config TrkWks start= disabled
sc config TermService start= DEMAND
sc config WatAdminSvc start= disabled
sc config wbengine start= disabled
sc config WinDefend start= disabled
sc config WebClient start= disabled
sc config WerSvc start= disabled
sc config WMPNetworkSvc start= disabled
sc config WSearch start= disabled
sc config W32Time start= disabled
sc config wuauserv start= disabled
sc config WbioSrvc start= disabled
sc config wercplsupport start= disabled
sc config WinHttpAutoProxySvc start= disabled
sc config WPDBusEnum start= disabled
sc config WPCSvc start= disabled
sc config WwanSvc start= disabled
sc config WdiServiceHost start= disabled
sc config Irmon start= disabled
@pause
echo.
echo.&echo  优化完成!任意键退出
echo. & pause>nul