.class public Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbConnectionReceiver.java"


# static fields
.field private static MtpStat:I


# instance fields
.field ConnectThread:Ljava/lang/Thread;

.field private ConnectedIntent:Landroid/content/Intent;

.field private DEBUG:Z

.field DisConnectThread:Ljava/lang/Thread;

.field private MtpIntent:Landroid/content/Intent;

.field private bootComplete:Z

.field private currentStat:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private notification:Landroid/app/Notification;

.field private notificationId:I

.field private notificationManager:Landroid/app/NotificationManager;

# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->currentStat:Z

    .line 19
    iput-boolean v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->bootComplete:Z

    .line 20
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.ktouch.connectioncomplete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->ConnectedIntent:Landroid/content/Intent;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->DEBUG:Z

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.ktouch.mtpcomplete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->MtpIntent:Landroid/content/Intent;

    .line 110
    new-instance v0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver$1;

    invoke-direct {v0, p0}, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver$1;-><init>(Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;)V

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->ConnectThread:Ljava/lang/Thread;

    .line 119
    new-instance v0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver$2;

    invoke-direct {v0, p0}, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver$2;-><init>(Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;)V

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->DisConnectThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->DEBUG:Z

    return v0
.end method


# virtual methods
.method public cancelNotify()V
    .locals 3

    .prologue
    .line 133
    iget-boolean v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "UsbConnectionMode"

    const-string v2, "cancelNotify"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 136
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const v1, 0x7f040004

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 137
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->mContentResolver:Landroid/content/ContentResolver;

    .line 34
    iput-object p1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->mContext:Landroid/content/Context;

    .line 36
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 38
    const-string v5, "persist.ty.usbconnectedmode"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, UsbConnectedMode:Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    .end local v0           #UsbConnectedMode:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 41
    .restart local v0       #UsbConnectedMode:Ljava/lang/String;
    :cond_1
    const-string v5, "connected"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 42
    .local v3, connected:Z
    const-string v5, "configured"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 43
    .local v2, configured:Z
    const-string v5, "mtp"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 44
    .local v4, mtpEnabled:Z
    const-string v5, "sys.ty.usbstatus"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->currentStat:Z

    .line 46
    iget-boolean v5, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "UsbConnectionMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive connected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",currentStat="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->currentStat:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",configured="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_2
    if-nez v3, :cond_4

    .line 49
    iget-boolean v5, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "UsbConnectionMode"

    const-string v6, "onReceive DisConnected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_3
    const-string v5, "sys.ty.mtpstatus"

    const-string v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_4
    if-eqz v4, :cond_9

    if-eqz v2, :cond_9

    .line 56
    sget v5, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->MtpStat:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->MtpStat:I

    .line 57
    const-string v5, "UsbConnectionMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MtpStat="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->MtpStat:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget v5, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->MtpStat:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 59
    sput v8, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->MtpStat:I

    .line 60
    const-string v5, "UsbConnectionMode"

    const-string v6, "sendBroadcast"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v5, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->MtpIntent:Landroid/content/Intent;

    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    const-string v5, "sys.ty.mtpstatus"

    const-string v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_5
    :goto_1
    iget-boolean v5, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->currentStat:Z

    if-eq v5, v3, :cond_0

    .line 70
    if-ne v3, v9, :cond_a

    .line 71
    const-string v5, "sys.ty.bootcomplete"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->bootComplete:Z

    .line 73
    iget-boolean v5, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "UsbConnectionMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive bootComplete="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->bootComplete:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_6
    if-nez v2, :cond_7

    iget-boolean v5, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->bootComplete:Z

    if-nez v5, :cond_0

    .line 75
    :cond_7
    iget-object v5, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->ConnectThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 79
    :cond_8
    :goto_2
    const-string v6, "sys.ty.usbstatus"

    if-ne v3, v9, :cond_b

    const-string v5, "true"

    :goto_3
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 64
    :cond_9
    if-nez v2, :cond_5

    if-nez v4, :cond_5

    .line 65
    const-string v5, "UsbConnectionMode"

    const-string v6, "disconnected MtpStat = 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sput v8, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->MtpStat:I

    goto :goto_1

    .line 76
    :cond_a
    if-nez v3, :cond_8

    .line 77
    iget-object v5, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->DisConnectThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 79
    :cond_b
    const-string v5, "false"

    goto :goto_3

    .line 81
    .end local v0           #UsbConnectedMode:Ljava/lang/String;
    .end local v2           #configured:Z
    .end local v3           #connected:Z
    .end local v4           #mtpEnabled:Z
    :cond_c
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    iget-boolean v5, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->DEBUG:Z

    if-eqz v5, :cond_d

    const-string v5, "UsbConnectionMode"

    const-string v6, "onReceive ACTION_BOOT_COMPLETED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_d
    iput-boolean v9, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->bootComplete:Z

    .line 84
    const-string v5, "sys.ty.bootcomplete"

    const-string v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public initUsbConnectNotifycation(Landroid/content/Context;)V
    .locals 5

    .prologue
    const v4, 0x7f040004

    .line 111
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->notification:Landroid/app/Notification;

    .line 112
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->notificationManager:Landroid/app/NotificationManager;

    .line 113
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->notification:Landroid/app/Notification;

    const v1, 0x7f020002

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 114
    iput v4, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->notificationId:I

    .line 115
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->notification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 118
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->notification:Landroid/app/Notification;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 119
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->notification:Landroid/app/Notification;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x1000

    invoke-static {p1, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 120
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->notification:Landroid/app/Notification;

    const v1, 0x7f040001

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 121
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->notification:Landroid/app/Notification;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040005

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 122
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->notificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->notificationId:I

    iget-object v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 123
    return-void
.end method
