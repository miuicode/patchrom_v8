.class public Lcom/android/internal/telephony/cat/CatResponseMessage;
.super Ljava/lang/Object;
.source "CatResponseMessage.java"


# instance fields
.field addedInfo:[B

.field additionalInfo:I

.field cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field eventValue:I

.field includeAdditionalInfo:Z

.field resCode:Lcom/android/internal/telephony/cat/ResultCode;

.field usersConfirm:Z

.field usersInput:Ljava/lang/String;

.field usersMenuSelection:I

.field usersYesNoSelection:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .parameter "cmdMsg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 23
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 24
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    .line 25
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    .line 27
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->includeAdditionalInfo:Z

    .line 29
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->additionalInfo:I

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->eventValue:I

    .line 31
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->addedInfo:[B

    .line 34
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 35
    return-void
.end method


# virtual methods
.method getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-object v0
.end method

.method public setAdditionalInfo(ZI)V
    .locals 0
    .parameter "addInfoReq"
    .parameter "addInfoCode"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->includeAdditionalInfo:Z

    .line 64
    iput p2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->additionalInfo:I

    .line 65
    return-void
.end method

.method public setConfirmation(Z)V
    .locals 0
    .parameter "confirm"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    .line 60
    return-void
.end method

.method public setEventDownload(I[B)V
    .locals 0
    .parameter "event"
    .parameter "addedInfo"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->eventValue:I

    .line 51
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->addedInfo:[B

    .line 52
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setMenuSelection(I)V
    .locals 0
    .parameter "selection"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    .line 43
    return-void
.end method

.method public setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 0
    .parameter "resCode"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 39
    return-void
.end method

.method public setYesNo(Z)V
    .locals 0
    .parameter "yesNo"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    .line 56
    return-void
.end method
