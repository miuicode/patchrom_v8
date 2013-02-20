.class public Landroid/widget/LetterScroller$ScrollFade;
.super Ljava/lang/Object;
.source "LetterScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/LetterScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollFade"
.end annotation


# static fields
.field static final ALPHA_MAX:I = 0xff

.field static final ALPHA_MIN:I = 0x0

.field static final FADE_DURATION:J = 0x1f4L


# instance fields
.field mFadeDuration:J

.field mStartTime:J

.field final synthetic this$0:Landroid/widget/LetterScroller;


# direct methods
.method public constructor <init>(Landroid/widget/LetterScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Landroid/widget/LetterScroller$ScrollFade;->this$0:Landroid/widget/LetterScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAlpha()I
    .locals 9

    .prologue
    const-wide/16 v7, 0xff

    .line 336
    iget-object v3, p0, Landroid/widget/LetterScroller$ScrollFade;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mState:I
    invoke-static {v3}, Landroid/widget/LetterScroller;->access$000(Landroid/widget/LetterScroller;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 337
    const/16 v0, 0xff

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 339
    :cond_1
    iget-object v3, p0, Landroid/widget/LetterScroller$ScrollFade;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mState:I
    invoke-static {v3}, Landroid/widget/LetterScroller;->access$000(Landroid/widget/LetterScroller;)I

    move-result v3

    if-nez v3, :cond_2

    .line 340
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 345
    .local v1, now:J
    iget-wide v3, p0, Landroid/widget/LetterScroller$ScrollFade;->mStartTime:J

    iget-wide v5, p0, Landroid/widget/LetterScroller$ScrollFade;->mFadeDuration:J

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    .line 346
    const/4 v0, 0x0

    .local v0, alpha:I
    goto :goto_0

    .line 348
    .end local v0           #alpha:I
    :cond_3
    iget-wide v3, p0, Landroid/widget/LetterScroller$ScrollFade;->mStartTime:J

    sub-long v3, v1, v3

    mul-long/2addr v3, v7

    iget-wide v5, p0, Landroid/widget/LetterScroller$ScrollFade;->mFadeDuration:J

    div-long/2addr v3, v5

    sub-long v3, v7, v3

    long-to-int v0, v3

    .line 349
    .restart local v0       #alpha:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 356
    iget-object v0, p0, Landroid/widget/LetterScroller$ScrollFade;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mState:I
    invoke-static {v0}, Landroid/widget/LetterScroller;->access$000(Landroid/widget/LetterScroller;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 357
    invoke-virtual {p0}, Landroid/widget/LetterScroller$ScrollFade;->getAlpha()I

    move-result v0

    if-lez v0, :cond_1

    .line 358
    iget-object v0, p0, Landroid/widget/LetterScroller$ScrollFade;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mPanel:Landroid/widget/LetterScroller$Panel;
    invoke-static {v0}, Landroid/widget/LetterScroller;->access$1000(Landroid/widget/LetterScroller;)Landroid/widget/LetterScroller$Panel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LetterScroller$Panel;->invalidate()V

    .line 359
    iget-object v0, p0, Landroid/widget/LetterScroller$ScrollFade;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/LetterScroller;->access$500(Landroid/widget/LetterScroller;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/LetterScroller$ScrollFade;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mScrollFade:Landroid/widget/LetterScroller$ScrollFade;
    invoke-static {v1}, Landroid/widget/LetterScroller;->access$900(Landroid/widget/LetterScroller;)Landroid/widget/LetterScroller$ScrollFade;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Landroid/widget/LetterScroller$ScrollFade;->this$0:Landroid/widget/LetterScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LetterScroller;->setState(I)V

    goto :goto_0
.end method

.method start()V
    .locals 2

    .prologue
    .line 330
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Landroid/widget/LetterScroller$ScrollFade;->mFadeDuration:J

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/LetterScroller$ScrollFade;->mStartTime:J

    .line 332
    iget-object v0, p0, Landroid/widget/LetterScroller$ScrollFade;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/LetterScroller;->access$500(Landroid/widget/LetterScroller;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/LetterScroller$ScrollFade;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mScrollFade:Landroid/widget/LetterScroller$ScrollFade;
    invoke-static {v1}, Landroid/widget/LetterScroller;->access$900(Landroid/widget/LetterScroller;)Landroid/widget/LetterScroller$ScrollFade;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    return-void
.end method
