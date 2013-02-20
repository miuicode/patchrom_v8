.class Landroid/widget/LetterScroller$1;
.super Ljava/lang/Object;
.source "LetterScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/LetterScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/LetterScroller;


# direct methods
.method constructor <init>(Landroid/widget/LetterScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Landroid/widget/LetterScroller$1;->this$0:Landroid/widget/LetterScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Landroid/widget/LetterScroller$1;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mState:I
    invoke-static {v0}, Landroid/widget/LetterScroller;->access$000(Landroid/widget/LetterScroller;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Landroid/widget/LetterScroller$1;->this$0:Landroid/widget/LetterScroller;

    iget-object v1, p0, Landroid/widget/LetterScroller$1;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mNowX:I
    invoke-static {v1}, Landroid/widget/LetterScroller;->access$200(Landroid/widget/LetterScroller;)I

    move-result v1

    #setter for: Landroid/widget/LetterScroller;->mDownX:I
    invoke-static {v0, v1}, Landroid/widget/LetterScroller;->access$102(Landroid/widget/LetterScroller;I)I

    .line 69
    iget-object v0, p0, Landroid/widget/LetterScroller$1;->this$0:Landroid/widget/LetterScroller;

    iget-object v1, p0, Landroid/widget/LetterScroller$1;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mNowY:I
    invoke-static {v1}, Landroid/widget/LetterScroller;->access$400(Landroid/widget/LetterScroller;)I

    move-result v1

    #setter for: Landroid/widget/LetterScroller;->mDownY:I
    invoke-static {v0, v1}, Landroid/widget/LetterScroller;->access$302(Landroid/widget/LetterScroller;I)I

    .line 70
    iget-object v0, p0, Landroid/widget/LetterScroller$1;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/LetterScroller;->access$500(Landroid/widget/LetterScroller;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    :cond_0
    return-void
.end method
