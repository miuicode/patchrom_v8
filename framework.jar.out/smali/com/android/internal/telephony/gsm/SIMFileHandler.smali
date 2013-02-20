.class public final Lcom/android/internal/telephony/gsm/SIMFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 42
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 46
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "GSM"

    const-string v1, "SIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 4
    .parameter "efid"

    .prologue
    .line 62
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 63
    .local v0, card:Lcom/android/internal/telephony/IccCard;
    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    sparse-switch p1, :sswitch_data_0

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 102
    if-eqz v0, :cond_1

    .line 103
    const-string v1, "3F007F105F3A"

    .line 141
    .end local v1           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 82
    :sswitch_0
    const-string v1, "7FFF"

    goto :goto_0

    .line 91
    :sswitch_1
    const-string v1, "3F007F20"

    goto :goto_0

    .line 95
    :sswitch_2
    const-string v1, "3F007F105F3A"

    goto :goto_0

    .line 105
    .restart local v1       #path:Ljava/lang/String;
    :cond_1
    const-string v2, "GSM"

    const-string v3, "Error: EF Path being returned in null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    .end local v1           #path:Ljava/lang/String;
    :cond_2
    sparse-switch p1, :sswitch_data_1

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    .restart local v1       #path:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 139
    const-string v2, "GSM"

    const-string v3, "Error: EF Path being returned in null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    .end local v1           #path:Ljava/lang/String;
    :sswitch_3
    const-string v1, "3F007F10"

    goto :goto_0

    .line 125
    :sswitch_4
    const-string v1, "3F007F20"

    goto :goto_0

    .line 134
    :sswitch_5
    const-string v1, "3F007F20"

    goto :goto_0

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_2
        0x6f11 -> :sswitch_1
        0x6f13 -> :sswitch_1
        0x6f14 -> :sswitch_1
        0x6f15 -> :sswitch_1
        0x6f16 -> :sswitch_1
        0x6f17 -> :sswitch_1
        0x6f18 -> :sswitch_1
        0x6f38 -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f46 -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
        0x6fad -> :sswitch_0
        0x6fc5 -> :sswitch_0
        0x6fc7 -> :sswitch_0
        0x6fc8 -> :sswitch_0
        0x6fc9 -> :sswitch_0
        0x6fca -> :sswitch_0
        0x6fcb -> :sswitch_0
        0x6fcd -> :sswitch_0
    .end sparse-switch

    .line 111
    :sswitch_data_1
    .sparse-switch
        0x6f11 -> :sswitch_5
        0x6f13 -> :sswitch_5
        0x6f14 -> :sswitch_5
        0x6f15 -> :sswitch_5
        0x6f16 -> :sswitch_5
        0x6f17 -> :sswitch_5
        0x6f18 -> :sswitch_5
        0x6f38 -> :sswitch_4
        0x6f3c -> :sswitch_3
        0x6f46 -> :sswitch_4
        0x6fad -> :sswitch_4
        0x6fc5 -> :sswitch_4
        0x6fc7 -> :sswitch_4
        0x6fc8 -> :sswitch_4
        0x6fc9 -> :sswitch_4
        0x6fca -> :sswitch_4
        0x6fcb -> :sswitch_4
        0x6fcd -> :sswitch_4
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    .line 57
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 146
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 150
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method
