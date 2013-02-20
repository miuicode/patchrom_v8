.class Landroid/media/AudioService$2;
.super Landroid/os/HandlerThread;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 372
    iput-object p1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 2

    .prologue
    .line 375
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 376
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #setter for: Landroid/media/AudioService;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$502(Landroid/media/AudioService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 377
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/media/AudioService;->access$500(Landroid/media/AudioService;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 378
    const-string v0, "AudioService"

    const-string v1, "--->>> AudioService_ModemMsgSend::onLooperPrepared mHandler = null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    return-void
.end method
