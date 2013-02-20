.class Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver$1;
.super Ljava/lang/Thread;
.source "UsbConnectionReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;


# direct methods
.method constructor <init>(Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver$1;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver$1;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->access$000(Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver$1;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->DEBUG:Z
    invoke-static {v1}, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->access$100(Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "UsbConnectionMode"

    const-string v2, "ConnectThread startActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver$1;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->access$000(Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->initUsbConnectNotifycation(Landroid/content/Context;)V

    .line 116
    return-void
.end method
