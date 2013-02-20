.class Lcom/android/internal/app/TYRingtonePickerActivity$2;
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
    .line 147
    iput-object p1, p0, Lcom/android/internal/app/TYRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "paramView"

    .prologue
    const/4 v5, -0x1

    .line 151
    iget-object v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    #getter for: Lcom/android/internal/app/TYRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v2}, Lcom/android/internal/app/TYRingtonePickerActivity;->access$300(Lcom/android/internal/app/TYRingtonePickerActivity;)Landroid/media/RingtoneManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 153
    iget-object v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    #getter for: Lcom/android/internal/app/TYRingtonePickerActivity;->mClickedPos:I
    invoke-static {v2}, Lcom/android/internal/app/TYRingtonePickerActivity;->access$000(Lcom/android/internal/app/TYRingtonePickerActivity;)I

    move-result v2

    if-le v2, v5, :cond_1

    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v0, resultIntent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 156
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    #getter for: Lcom/android/internal/app/TYRingtonePickerActivity;->mClickedPos:I
    invoke-static {v2}, Lcom/android/internal/app/TYRingtonePickerActivity;->access$000(Lcom/android/internal/app/TYRingtonePickerActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/TYRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    #getter for: Lcom/android/internal/app/TYRingtonePickerActivity;->mDefaultRingtonePos:I
    invoke-static {v3}, Lcom/android/internal/app/TYRingtonePickerActivity;->access$400(Lcom/android/internal/app/TYRingtonePickerActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 158
    iget-object v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    #getter for: Lcom/android/internal/app/TYRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/internal/app/TYRingtonePickerActivity;->access$500(Lcom/android/internal/app/TYRingtonePickerActivity;)Landroid/net/Uri;

    move-result-object v1

    .line 165
    :goto_0
    const-string v2, "TYRingtonePickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectedUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    #getter for: Lcom/android/internal/app/TYRingtonePickerActivity;->flag:I
    invoke-static {v2}, Lcom/android/internal/app/TYRingtonePickerActivity;->access$800(Lcom/android/internal/app/TYRingtonePickerActivity;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 167
    iget-object v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    #calls: Lcom/android/internal/app/TYRingtonePickerActivity;->saveRingtone(Landroid/net/Uri;)V
    invoke-static {v2, v1}, Lcom/android/internal/app/TYRingtonePickerActivity;->access$900(Lcom/android/internal/app/TYRingtonePickerActivity;Landroid/net/Uri;)V

    .line 169
    :cond_0
    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    iget-object v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/TYRingtonePickerActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 173
    .end local v0           #resultIntent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/TYRingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/TYRingtonePickerActivity$2$1;

    invoke-direct {v3, p0}, Lcom/android/internal/app/TYRingtonePickerActivity$2$1;-><init>(Lcom/android/internal/app/TYRingtonePickerActivity$2;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 179
    iget-object v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/TYRingtonePickerActivity;->finish()V

    .line 180
    return-void

    .line 159
    .restart local v0       #resultIntent:Landroid/content/Intent;
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    #getter for: Lcom/android/internal/app/TYRingtonePickerActivity;->mClickedPos:I
    invoke-static {v2}, Lcom/android/internal/app/TYRingtonePickerActivity;->access$000(Lcom/android/internal/app/TYRingtonePickerActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/TYRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    #getter for: Lcom/android/internal/app/TYRingtonePickerActivity;->mSilentPos:I
    invoke-static {v3}, Lcom/android/internal/app/TYRingtonePickerActivity;->access$600(Lcom/android/internal/app/TYRingtonePickerActivity;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 161
    const/4 v1, 0x0

    goto :goto_0

    .line 163
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    #getter for: Lcom/android/internal/app/TYRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v2}, Lcom/android/internal/app/TYRingtonePickerActivity;->access$300(Lcom/android/internal/app/TYRingtonePickerActivity;)Landroid/media/RingtoneManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/TYRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    iget-object v4, p0, Lcom/android/internal/app/TYRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    #getter for: Lcom/android/internal/app/TYRingtonePickerActivity;->mClickedPos:I
    invoke-static {v4}, Lcom/android/internal/app/TYRingtonePickerActivity;->access$000(Lcom/android/internal/app/TYRingtonePickerActivity;)I

    move-result v4

    #calls: Lcom/android/internal/app/TYRingtonePickerActivity;->getRingtoneManagerPosition(I)I
    invoke-static {v3, v4}, Lcom/android/internal/app/TYRingtonePickerActivity;->access$700(Lcom/android/internal/app/TYRingtonePickerActivity;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/TYRingtonePickerActivity$2;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    #getter for: Lcom/android/internal/app/TYRingtonePickerActivity;->flag:I
    invoke-static {v4}, Lcom/android/internal/app/TYRingtonePickerActivity;->access$800(Lcom/android/internal/app/TYRingtonePickerActivity;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/media/RingtoneManager;->mGetRingtoneUri(II)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method
