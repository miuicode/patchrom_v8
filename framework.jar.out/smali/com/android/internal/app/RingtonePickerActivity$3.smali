.class Lcom/android/internal/app/RingtonePickerActivity$3;
.super Landroid/os/storage/StorageEventListener;
.source "RingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/RingtonePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/internal/app/RingtonePickerActivity$3;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 664
    const-string/jumbo v1, "shared"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 665
    .local v0, on:Z
    if-eqz v0, :cond_0

    .line 666
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity$3;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/RingtonePickerActivity;->finish()V

    .line 668
    :cond_0
    return-void
.end method
