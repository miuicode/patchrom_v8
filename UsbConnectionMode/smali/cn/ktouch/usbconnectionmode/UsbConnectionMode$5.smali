.class Lcn/ktouch/usbconnectionmode/UsbConnectionMode$5;
.super Ljava/lang/Object;
.source "UsbConnectionMode.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 214
    iput-object p1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$5;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 216
    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$5;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->DEBUG:Z
    invoke-static {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$200(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$5;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$300(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timeout activityfinish"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$5;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    invoke-virtual {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->finish()V

    .line 219
    monitor-exit p0

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
