.class public Lcn/ktouch/usbconnectionmode/UsbConnectionMode;
.super Landroid/app/Activity;
.source "UsbConnectionMode.java"


# static fields
.field public static mUsbConnectionMode:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;


# instance fields
.field CancelListener:Landroid/view/View$OnClickListener;

.field private ConnectedIntent:Landroid/content/Intent;

.field private DEBUG:Z

.field OKListener:Landroid/view/View$OnClickListener;

.field private TAG:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnOK:Landroid/widget/Button;

.field private mChoice:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsRegister:Z

.field mTimeout:Ljava/lang/Runnable;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mtp:Landroid/widget/RadioButton;

.field private notification:Landroid/app/Notification;

.field private notificationId:I

.field private notificationManager:Landroid/app/NotificationManager;

.field private sys_ty_ums:Ljava/lang/String;

.field private sys_usb_state:Ljava/lang/String;

.field private ums:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const-string v0, "UsbConnectionMode"

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->DEBUG:Z

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.ktouch.connectioncomplete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->ConnectedIntent:Landroid/content/Intent;

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mChoice:I

    .line 63
    iput-object v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->sys_usb_state:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->sys_ty_ums:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mIsRegister:Z

    .line 133
    new-instance v0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;

    invoke-direct {v0, p0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;-><init>(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)V

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->OKListener:Landroid/view/View$OnClickListener;

    .line 155
    new-instance v0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$4;

    invoke-direct {v0, p0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$4;-><init>(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)V

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->CancelListener:Landroid/view/View$OnClickListener;

    .line 214
    new-instance v0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$5;

    invoke-direct {v0, p0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$5;-><init>(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)V

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mTimeout:Ljava/lang/Runnable;

    .line 234
    new-instance v0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$6;

    invoke-direct {v0, p0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$6;-><init>(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)V

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mChoice:I

    return v0
.end method

.method static synthetic access$102(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mChoice:I

    return p1
.end method

.method static synthetic access$200(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$500(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->sys_usb_state:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->sys_ty_ums:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->ConnectedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$800(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->notificationId:I

    return v0
.end method

.method static synthetic access$900(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private final isLockScreen()Z
    .locals 3

    .prologue
    .line 225
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 226
    .local v0, mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    iget-boolean v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->TAG:Ljava/lang/String;

    const-string v2, "isLockScreen on"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    const/4 v1, 0x1

    .line 231
    :goto_0
    return v1

    .line 230
    :cond_1
    iget-boolean v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->DEBUG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->TAG:Ljava/lang/String;

    const-string v2, "isLockScreen off"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DisableUMS()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 199
    iget-object v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    .line 200
    .local v0, adbEnable:Z
    :cond_0
    iget-boolean v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->DEBUG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DisableUMS adbEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    if-eqz v0, :cond_2

    .line 203
    const-string v2, "mtp,adb"

    iput-object v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->sys_usb_state:Ljava/lang/String;

    .line 207
    :goto_0
    const-string v2, "0"

    iput-object v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->sys_ty_ums:Ljava/lang/String;

    .line 208
    const-string v2, "persist.sys.ty.ums"

    iget-object v3, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->sys_ty_ums:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v2, "persist.sys.usb.config"

    iget-object v3, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->sys_usb_state:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return v1

    .line 205
    :cond_2
    const-string v2, "mtp"

    iput-object v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->sys_usb_state:Ljava/lang/String;

    goto :goto_0
.end method

.method public EnableUMS()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 182
    iget-object v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    .line 183
    .local v0, adbEnable:Z
    :cond_0
    iget-boolean v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->DEBUG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnableUMS adbEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    if-eqz v0, :cond_2

    .line 186
    const-string v2, "mass_storage,adb"

    iput-object v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->sys_usb_state:Ljava/lang/String;

    .line 190
    :goto_0
    const-string v2, "1"

    iput-object v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->sys_ty_ums:Ljava/lang/String;

    .line 191
    const-string v2, "persist.sys.ty.ums"

    iget-object v3, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->sys_ty_ums:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v2, "persist.sys.usb.config"

    iget-object v3, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->sys_usb_state:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return v1

    .line 188
    :cond_2
    const-string v2, "mass_storage"

    iput-object v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->sys_usb_state:Ljava/lang/String;

    goto :goto_0
.end method

.method public activityfinish()V
    .locals 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->TAG:Ljava/lang/String;

    const-string v1, "activityfinish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->notificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->notificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 130
    invoke-virtual {p0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->finish()V

    .line 131
    return-void
.end method

.method public initUsbConnectNotifycation()V
    .locals 5

    .prologue
    const v4, 0x7f040004

    .line 111
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->notification:Landroid/app/Notification;

    .line 112
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->notificationManager:Landroid/app/NotificationManager;

    .line 113
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->notification:Landroid/app/Notification;

    const v1, 0x7f020002

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 114
    iput v4, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->notificationId:I

    .line 115
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->notification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 118
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->notification:Landroid/app/Notification;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 119
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->notification:Landroid/app/Notification;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x1000

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 120
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->notification:Landroid/app/Notification;

    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 121
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->notification:Landroid/app/Notification;

    invoke-virtual {p0, v4}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040005

    invoke-virtual {p0, v2}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 122
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->notificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->notificationId:I

    iget-object v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 123
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->setContentView(I)V

    .line 72
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 74
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->ums:Landroid/widget/RadioButton;

    .line 75
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mtp:Landroid/widget/RadioButton;

    .line 77
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->ums:Landroid/widget/RadioButton;

    new-instance v1, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$1;

    invoke-direct {v1, p0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$1;-><init>(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mtp:Landroid/widget/RadioButton;

    new-instance v1, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$2;

    invoke-direct {v1, p0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$2;-><init>(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mBtnOK:Landroid/widget/Button;

    .line 98
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mBtnOK:Landroid/widget/Button;

    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->OKListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mBtnCancel:Landroid/widget/Button;

    .line 100
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mBtnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->CancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mContext:Landroid/content/Context;

    .line 103
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mContentResolver:Landroid/content/ContentResolver;

    .line 104
    sput-object p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mUsbConnectionMode:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    .line 106
    invoke-virtual {p0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->initUsbConnectNotifycation()V

    .line 107
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 289
    iget-boolean v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 271
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 272
    iget-boolean v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 253
    iget-boolean v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->TAG:Ljava/lang/String;

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 256
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 258
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mIsRegister:Z

    .line 260
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mHandler:Landroid/os/Handler;

    .line 262
    invoke-direct {p0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->isLockScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mTimeout:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 278
    iget-boolean v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mIsRegister:Z

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mIsRegister:Z

    .line 282
    :cond_0
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 283
    iget-boolean v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public waitForState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "sys"
    .parameter "state"

    .prologue
    .line 167
    iget-boolean v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForState sys="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 170
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 177
    :goto_1
    return v1

    .line 172
    :cond_1
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_2
    iget-boolean v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->DEBUG:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForState FAILED state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 173
    :catch_0
    move-exception v1

    goto :goto_2
.end method
