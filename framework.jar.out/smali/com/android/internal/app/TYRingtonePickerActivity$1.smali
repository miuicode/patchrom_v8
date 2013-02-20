.class Lcom/android/internal/app/TYRingtonePickerActivity$1;
.super Ljava/lang/Object;
.source "TYRingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 133
    iput-object p1, p0, Lcom/android/internal/app/TYRingtonePickerActivity$1;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity$1;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    #setter for: Lcom/android/internal/app/TYRingtonePickerActivity;->mClickedPos:I
    invoke-static {v0, p3}, Lcom/android/internal/app/TYRingtonePickerActivity;->access$002(Lcom/android/internal/app/TYRingtonePickerActivity;I)I

    .line 140
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity$1;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    #getter for: Lcom/android/internal/app/TYRingtonePickerActivity;->btn_select_done:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/app/TYRingtonePickerActivity;->access$100(Lcom/android/internal/app/TYRingtonePickerActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity$1;->this$0:Lcom/android/internal/app/TYRingtonePickerActivity;

    const/16 v1, 0x12c

    #calls: Lcom/android/internal/app/TYRingtonePickerActivity;->playRingtone(II)V
    invoke-static {v0, p3, v1}, Lcom/android/internal/app/TYRingtonePickerActivity;->access$200(Lcom/android/internal/app/TYRingtonePickerActivity;II)V

    .line 144
    return-void
.end method
