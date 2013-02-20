.class Lcn/ktouch/usbconnectionmode/UsbConnectionMode$1;
.super Ljava/lang/Object;
.source "UsbConnectionMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->onCreate(Landroid/os/Bundle;)V
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
    .line 77
    iput-object p1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$1;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 80
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$1;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$000(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$1;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    iget-object v1, v1, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$1;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$000(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$1;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    iget-object v1, v1, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$1;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    const/4 v1, 0x1

    #setter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mChoice:I
    invoke-static {v0, v1}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$102(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;I)I

    .line 83
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$1;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->DEBUG:Z
    invoke-static {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$200(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$1;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$300(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ums wait"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    return-void
.end method
