.class Lcom/android/internal/app/TYRingtonePickerActivity$3;
.super Ljava/lang/Object;
.source "TYRingtonePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/TYRingtonePickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/TYRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/TYRingtonePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/internal/app/TYRingtonePickerActivity$3;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "paramView"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity$3;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    #getter for: Lcom/android/internal/app/TYRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v0}, Lcom/android/internal/app/TYRingtonePickerActivity;->access$300(Lcom/android/internal/app/TYRingtonePickerActivity;)Landroid/media/RingtoneManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 189
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity$3;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/TYRingtonePickerActivity;->setResult(I)V

    .line 190
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity$3;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/TYRingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/TYRingtonePickerActivity$3$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/TYRingtonePickerActivity$3$1;-><init>(Lcom/android/internal/app/TYRingtonePickerActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 196
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity$3;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/TYRingtonePickerActivity;->finish()V

    .line 197
    return-void
.end method
