.class Lcn/ktouch/usbconnectionmode/UsbConnectionMode$6;
.super Landroid/content/BroadcastReceiver;
.source "UsbConnectionMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/ktouch/usbconnectionmode/UsbConnectionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;


# direct methods
.method constructor <init>(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$6;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 237
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$6;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->DEBUG:Z
    invoke-static {v1}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$200(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$6;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$300(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mBroadcastReceiver ACTION_USER_PRESENT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$6;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$000(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$6;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    iget-object v2, v2, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mTimeout:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    :cond_1
    return-void
.end method
