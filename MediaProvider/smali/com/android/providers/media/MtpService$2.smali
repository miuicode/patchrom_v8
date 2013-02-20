.class Lcom/android/providers/media/MtpService$2;
.super Landroid/os/storage/StorageEventListener;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MtpService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MtpService;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/providers/media/MtpService$2;->this$0:Lcom/android/providers/media/MtpService;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 79
    iget-object v2, p0, Lcom/android/providers/media/MtpService$2;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$000(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v3

    monitor-enter v3

    .line 80
    :try_start_0
    const-string v2, "MtpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStorageStateChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v2, "mounted"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/android/providers/media/MtpService$2;->this$0:Lcom/android/providers/media/MtpService;

    #calls: Lcom/android/providers/media/MtpService;->volumeMountedLocked(Ljava/lang/String;)V
    invoke-static {v2, p1}, Lcom/android/providers/media/MtpService;->access$300(Lcom/android/providers/media/MtpService;Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/android/providers/media/MtpService$2;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mPtpMode:Z
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$400(Lcom/android/providers/media/MtpService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v0, i:Landroid/content/Intent;
    const-string v2, "ptp"

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    iget-object v2, p0, Lcom/android/providers/media/MtpService$2;->this$0:Lcom/android/providers/media/MtpService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/providers/media/MtpService;->onStartCommand(Landroid/content/Intent;II)I

    .line 96
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    monitor-exit v3

    .line 97
    return-void

    .line 90
    :cond_1
    const-string v2, "mounted"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/android/providers/media/MtpService$2;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$500(Lcom/android/providers/media/MtpService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorage;

    .line 92
    .local v1, storage:Landroid/mtp/MtpStorage;
    if-eqz v1, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/providers/media/MtpService$2;->this$0:Lcom/android/providers/media/MtpService;

    #calls: Lcom/android/providers/media/MtpService;->removeStorageLocked(Landroid/mtp/MtpStorage;)V
    invoke-static {v2, v1}, Lcom/android/providers/media/MtpService;->access$600(Lcom/android/providers/media/MtpService;Landroid/mtp/MtpStorage;)V

    goto :goto_0

    .line 96
    .end local v1           #storage:Landroid/mtp/MtpStorage;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
