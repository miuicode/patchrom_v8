.class Landroid/media/AudioService$SetAudioFuncThread;
.super Ljava/lang/Thread;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetAudioFuncThread"
.end annotation


# instance fields
.field m_nValue:I

.field m_nWay:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;II)V
    .locals 0
    .parameter
    .parameter "nWay"
    .parameter "nValue"

    .prologue
    .line 3889
    iput-object p1, p0, Landroid/media/AudioService$SetAudioFuncThread;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3890
    iput p2, p0, Landroid/media/AudioService$SetAudioFuncThread;->m_nWay:I

    .line 3891
    iput p3, p0, Landroid/media/AudioService$SetAudioFuncThread;->m_nValue:I

    .line 3892
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 3896
    const-string v3, "TYKTOUCH"

    .line 3897
    .local v3, identifier:Ljava/lang/String;
    const/16 v4, 0x8

    .line 3899
    .local v4, prefixLen:I
    const-string v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SetAudioFuncThread m_nWay:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/AudioService$SetAudioFuncThread;->m_nWay:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " m_nValue:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/AudioService$SetAudioFuncThread;->m_nValue:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3901
    const/16 v7, -0x10

    :try_start_0
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3902
    const-string/jumbo v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3904
    .local v1, TelMgr:Lcom/android/internal/telephony/ITelephony;
    const/16 v7, 0x14

    new-array v0, v7, [B

    .line 3905
    .local v0, Reqrawdata:[B
    iget-object v7, p0, Landroid/media/AudioService$SetAudioFuncThread;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->clearBuffer([B)V
    invoke-static {v7, v0}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;[B)V

    .line 3906
    const-string v7, "TYKTOUCH"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "TYKTOUCH"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v7, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3907
    const/16 v7, 0x8

    iget v8, p0, Landroid/media/AudioService$SetAudioFuncThread;->m_nWay:I

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 3908
    const/16 v7, 0xc

    const/4 v8, 0x4

    aput-byte v8, v0, v7

    .line 3909
    const/16 v7, 0x10

    iget v8, p0, Landroid/media/AudioService$SetAudioFuncThread;->m_nValue:I

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 3911
    const/16 v7, 0x8

    new-array v5, v7, [B

    .line 3912
    .local v5, rawdataResponse:[B
    iget-object v7, p0, Landroid/media/AudioService$SetAudioFuncThread;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->clearBuffer([B)V
    invoke-static {v7, v5}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;[B)V

    .line 3913
    invoke-interface {v1, v0, v5}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v6

    .line 3914
    .local v6, ret:I
    const-string v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendOemRilRequestRaw ret = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3918
    .end local v0           #Reqrawdata:[B
    .end local v1           #TelMgr:Lcom/android/internal/telephony/ITelephony;
    .end local v5           #rawdataResponse:[B
    .end local v6           #ret:I
    :goto_0
    return-void

    .line 3915
    :catch_0
    move-exception v2

    .line 3916
    .local v2, ex:Landroid/os/RemoteException;
    const-string v7, "AudioService"

    const-string v8, "RemoteException from getPhoneInterface()"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
