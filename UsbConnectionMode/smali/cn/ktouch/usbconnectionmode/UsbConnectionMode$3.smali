.class Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;
.super Ljava/lang/Object;
.source "UsbConnectionMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 133
    iput-object p1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 136
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mChoice:I
    invoke-static {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$100(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 137
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    invoke-virtual {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->EnableUMS()I

    .line 138
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$400(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "mass_storage"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 139
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->DEBUG:Z
    invoke-static {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$200(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$300(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OKListener onClick UMS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    const-string v1, "sys.usb.state"

    iget-object v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->sys_usb_state:Ljava/lang/String;
    invoke-static {v2}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$500(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->waitForState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    const-string v1, "persist.sys.ty.ums"

    iget-object v2, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->sys_ty_ums:Ljava/lang/String;
    invoke-static {v2}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$600(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->waitForState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->ConnectedIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$700(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->notificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$900(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->notificationId:I
    invoke-static {v1}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$800(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 150
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    invoke-virtual {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->finish()V

    .line 152
    :cond_1
    return-void

    .line 140
    :cond_2
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mChoice:I
    invoke-static {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$100(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->DEBUG:Z
    invoke-static {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$200(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$300(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OKListener onClick MTP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_3
    const-string v0, "sys.ty.mtpstatus"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    invoke-virtual {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->DisableUMS()I

    .line 144
    iget-object v0, p0, Lcn/ktouch/usbconnectionmode/UsbConnectionMode$3;->this$0:Lcn/ktouch/usbconnectionmode/UsbConnectionMode;

    #getter for: Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcn/ktouch/usbconnectionmode/UsbConnectionMode;->access$400(Lcn/ktouch/usbconnectionmode/UsbConnectionMode;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "mtp"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0
.end method
