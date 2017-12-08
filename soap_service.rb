require "savon"
require "json"
require "active_support/core_ext/hash" #from_xml
require "nokogiri"

class SoapService
  def initialize(service_url, request_obj)
    @@client = Savon.client(wsdl: service_url)
    @@request_obj = request_obj
  end

  # Use the sample service method below to define a service operation.
  #
  #  def account_opening_bvn
  #    response = @@client.call(:account_opening_bvn, xml: @@request_obj)
  #    response.body[:account_opening_bvn_response][:account_opening_bvn_result][:response_code]
  #  end

  def GetCustomerDetails_by_CustomerId

  end

  def GetCustomerDetails_by_AccountNumber

  end

  def GetCustomerDetails_by_BVN

  end

  def GetAccountDetails

  end

  def CheckEODStatus

  end

  def GetBranchList

  end

  def GetAccountList 

  end

  def GetAccountList_by_InternetId

  end

  def GetAccountList_by_CustomerId

  end

  def GetAccountList_by_AccountNumber

  end

  def GetAccountList_by_BVN

  end

  def GetTransactions_by_GetTransactions

  end

  def GetTransactions_by_GetTransactions

  end

  def GetCustomerCards

  end

  def OtherAccounts

  end

  def SubmitCardRequest

  end

  def HasCardRecord

  end

  def OTPApps

  end

  def OTPDetails

  end

  def OTPResponse

  end

  def OTPResponse

  end

  def GetPhoneNumber

  end

  def BankworldCustomerIDResult

  end

  def IsValidOTP

  end

  def OTPResponse_by_ValidateOTP

  end

  def OTPResponse_by_GenerateOTP

  end

  def isCheckBookAllowed

  end

  def checkUseridHas203

  end

  def checkIfAccountAllowsCheckBook

  end

  def GetAllAccountTypes

  end

  GetLoggedInUserDetails, GetTransactions - GetTransactions,

  def searchMatchingUsers

  end

  def getExactUser

  end

  def GetLogintype

  end

  def getDailyLimit

  end

  def getDailyLimitNIP

  end

  def getTotalAmountSentTodayViaNIP

  end

  def GetChequeDetails

  end

  def GetChequeDetailsTrops

  end

  def getUserEmailForSSO

  end

  def getCurrencyNameAndSymbol

  end

  def getbranchname

  end

  def getProductname

  end

  def getAccountStatusName

  end

  def CurrencyShortname

  end

  def Currencycode

  end

  def AuthenticateUser

  end

  def AuthenticateUserTeller

  end

  def AuthenticateFlexcubeUser

  end

  def FCUBSCustomerService

  end

  def FCUBSCGService

  end

  def FCUBSDDService

  end

  def FCUBSPCService

  end

  def FCUBSCLService

  end

  def FCUBSSTService

  end

  def FCUBSDEService

  end

  def FCUBSDBLAccService

  end

  def FCUBSAccService

  end

  def FCUBSFTService

  end

  def FCUBSLCService

  end

  def FCUBSTDService

  end

  def FCUBSDBLCoreService

  end

  def SendEmail

  end

  def SendSMS

  end

  def GetCustomerAccountData

  end

  def OpenAccountWithBVN_by_GetCustomerRequest

  end

  def OpenAccountWithBVN_by_GetAccountDetails

  end

  def OpenAccountWithBVN_by_CreateMandate

  end

  def OpenAccountWithBVN_by_CreateAccount

  end

  def DBFLEXCubeUBStools

  end

  def ADAuthentication

  end

  def ActivateMagicCash

  end

  def AutoAssistance

  end

  def BetaAccountLookup

  end

  def BranchList

  end

  def ConfirmIBTrade

  end

  def DYAccountLookup

  end

  def DeactivateMagicCash

  end

  def DoAccountOfficerRequest

  end

  def DoAllowNewDevice

  end

  def DoBVNLinkRequest

  end

  def DoBetaTransfer

  end

  def DoCancelCard

  end

  def DoChequeBookRequest

  end

  def DoChequeConfirmation

  end

  def DoChequeStop

  end

  def DoConsolePasswordCountReset

  end

  def DoConsolePinCountReset

  end

  def DoCreditCardPayment

  end

  def DoDYATransfer

  end

  def DoDebitCardRequest

  end

  def DoDisableCard

  end

  def DoEnableCard

  end

  def DoExternalTransfer

  end

  def DoFCYSwiftDetails

  end

  def DoFCYTransfer

  end

  def DoFCYTransferEstimate

  end

  def DoIBCashOut

  end

  def DoIBFundWallet

  end

  def DoIBSignUp

  end

  def DoIBSignUpConfirmation

  end

  def DoLocalTransfer

  end

  def DoStatementRequest

  end

  def DoUnlinkDevice

  end

  def DoWalkIntransfer

  end

  def GetAlertThreshold

  end

  def GetBVN

  end

  def GetCreditCards

  end

  def GetCustomerLimits

  end

  def GetDebitCardFee

  end

  def GetLoginExceptionSettings

  end

  def GetPreviousTransfers

  end

  def GetSecretQuestions

  end

  def GetUserSecretQuestion

  end

  def InitiateChangeDevice

  end

  def InitiateIBTrade

  end

  def InitiateRegistration

  end

  def InitiateRegistrationWithCard

  end

  def NipAccountLookup

  end

  def QueryDebitAccountStatus

  end

  def RequestAssistance

  end

  def ResetSecretAnswer

  end

  def RetrieveInternetBankingId

  end

  def ReverseTransactionDA

  end

  def SendBillPaymentReceipt

  end

  def SendPreviousTransferReceipt

  end

  def SendReferal

  end

  def SendSMS

  end

  def SetAlertThreshold

  end

  def SetLoginExceptionSettings

  end

  def SetSecretAnswer

  end

  def UpdateCustomerLimit

  end

  def ValidateUserSecretQuestion

  end

  def authenticate2

  end

  def changePassword

  end

  def changePin

  end

  def completeRegistration

  end

  def debitAccount

  end

  def GenerateTempPassword

  end

  def generateTempPin

  end

  def getAccountTrends

  end

  def getAccounts

  end

  def getCards

  end

  def getPersonalizationInfo

  end

  def getStatement

  end

  def getUserProfile

  end

  def localAccountLookup

  end

  def resetAuthentication

  end

  def resetPassword

  end

  def sendProxyEmailMessage

  end

  def validateChangeDeviceCode

  end

  def ValidateRegistrationCode

  end

  def AccountStatus

  end

  def CheckTransactionStatus

  end

  def CustomerEmail

  end

  def DebitCustomer

  end

  def GetLoggedInUserDetails

  end

  def ListCustomerAccounts

  end

  def PassSettlement

  end

  def TxnReversal

  end

  def ValidateBVN

  end

  def ValidateBalance

  end

  def ValidateOnlineToken

  end

  def AccountStatus

  end

  def CheckTransactionStatus

  end

  def CustomerEmail

  end

  def DebitCustomer

  end

  def GetCustomerEmail

  end

  def GetLoggedInUserDetails

  end

  def ListCustomerAccounts

  end

  def PassSettlement

  end

  def TxnReversal

  end

  def ValidateBVN

  end

  def ValidateBalance

  end

  def ValidateOnlineToken

  end

  def PinIssuance

  end

  def decrptPOS

  end

  def sendemail

  end

  def sendsms 

  end

  def ProcessPay4MePayment

  end

  def GetTransactionStatus

  end

  def GetDetail 

  end

  def GetLastNTransactions

  end

  def GetAccountList

  end

  def GetAccountDetail

  end

  def GetAccTransactionHistory

  end

  def GetCardList

  end

  def GetCardDetail

  end

  def GetCardTransactionHistory

  end

  def GetAccountMemoByAccountNo

  end

  def SendSMS

  end

  def GetLoanRepaymentHistory

  end

  def LiftBvnMemo

  end

  def GetLoanRepaymentSchedule

  end

  def GetCustomerInteractions

  end

  def GetAccountSignature

  end

  def GetAccountPhoto

  end

  def CheckBankVerificationNumberForCIF

  end

  def UpdateDiamondBankSystemWithBVNForCIF

  end

  def UpdateBVNForBETACustomer

  end

  def UpdateCustomerInfoInCoreBanking

  end

  def SendBuckSMSMessages

  end

  def PublishCRMCampaign

  end

  def PublishCRMSurvey

  end

  def StopCheque

  end

  def EnableDisableCard

  end

  def PlaceAccountonNoDebitStatus

  end

  def PrintStatement

  end

end
