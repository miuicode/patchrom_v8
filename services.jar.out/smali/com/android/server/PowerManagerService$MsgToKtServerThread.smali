.class Lcom/android/server/PowerManagerService$MsgToKtServerThread;
.super Ljava/lang/Thread;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsgToKtServerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/server/PowerManagerService$MsgToKtServerThread;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 559
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 560
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 561
    iget-object v0, p0, Lcom/android/server/PowerManagerService$MsgToKtServerThread;->this$0:Lcom/android/server/PowerManagerService;

    new-instance v1, Lcom/android/server/PowerManagerService$MsgHandler;

    iget-object v2, p0, Lcom/android/server/PowerManagerService$MsgToKtServerThread;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/PowerManagerService$MsgHandler;-><init>(Lcom/android/server/PowerManagerService;Landroid/os/Looper;)V

    #setter for: Lcom/android/server/PowerManagerService;->KtMsgHandler:Lcom/android/server/PowerManagerService$MsgHandler;
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$2002(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$MsgHandler;)Lcom/android/server/PowerManagerService$MsgHandler;

    .line 562
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 563
    return-void
.end method
