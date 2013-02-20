.class Lcom/android/server/PowerManagerService$MsgHandler;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/server/PowerManagerService$MsgHandler;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 569
    return-void
.end method

.method public constructor <init>(Lcom/android/server/PowerManagerService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/server/PowerManagerService$MsgHandler;->this$0:Lcom/android/server/PowerManagerService;

    .line 572
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 574
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 578
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 580
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    .line 582
    .local v2, clientSocket:Landroid/net/LocalSocket;
    :try_start_0
    new-instance v5, Landroid/net/LocalSocketAddress;

    const-string v6, "com.android.ktserver"

    invoke-direct {v5, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 583
    const/4 v1, 0x0

    .line 584
    .local v1, clientOutStream:Ljava/io/OutputStream;
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 585
    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write(I)V

    .line 586
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 587
    invoke-virtual {v2}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 589
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 590
    .local v0, clientInStream:Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 591
    .local v4, read:I
    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 592
    const-string v5, "PowerManagerService"

    const-string v6, "the message is not from KtServer"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 603
    .end local v0           #clientInStream:Ljava/io/InputStream;
    .end local v1           #clientOutStream:Ljava/io/OutputStream;
    .end local v4           #read:I
    :goto_0
    return-void

    .line 594
    :catch_0
    move-exception v3

    .line 596
    .local v3, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 599
    :try_start_3
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 600
    :catch_1
    move-exception v5

    goto :goto_0

    .line 598
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 599
    :try_start_4
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 600
    :goto_1
    throw v5

    .restart local v0       #clientInStream:Ljava/io/InputStream;
    .restart local v1       #clientOutStream:Ljava/io/OutputStream;
    .restart local v4       #read:I
    :catch_2
    move-exception v5

    goto :goto_0

    .end local v0           #clientInStream:Ljava/io/InputStream;
    .end local v1           #clientOutStream:Ljava/io/OutputStream;
    .end local v4           #read:I
    :catch_3
    move-exception v6

    goto :goto_1
.end method
