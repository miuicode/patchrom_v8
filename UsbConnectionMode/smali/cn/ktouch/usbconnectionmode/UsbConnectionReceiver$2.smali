.class Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver$2;
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
    .line 119
    iput-object p1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver$2;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver$2;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->DEBUG:Z
    invoke-static {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->access$100(Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UsbConnectionMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisConnectThread finishActivity mUsbConnectionMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mUsbConnectionMode:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    sget-object v0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mUsbConnectionMode:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver$2;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->DEBUG:Z
    invoke-static {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->access$100(Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "UsbConnectionMode"

    const-string v1, "DisConnectThread activityfinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    sget-object v0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mUsbConnectionMode:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    invoke-virtual {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->activityfinish()V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_2
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver$2;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;

    invoke-virtual {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionReceiver;->cancelNotify()V

    goto :goto_0
.end method
