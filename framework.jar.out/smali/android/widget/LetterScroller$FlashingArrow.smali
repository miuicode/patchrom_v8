.class final Landroid/widget/LetterScroller$FlashingArrow;
.super Ljava/lang/Object;
.source "LetterScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/LetterScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FlashingArrow"
.end annotation


# static fields
.field static final DURATION:I = 0x190

.field static final FRAME:I = 0x3


# instance fields
.field private bottom:I

.field private count:I

.field private drawable:[Landroid/graphics/drawable/Drawable;

.field private height:I

.field private left:I

.field private right:I

.field final synthetic this$0:Landroid/widget/LetterScroller;

.field private top:I

.field private width:I


# direct methods
.method private constructor <init>(Landroid/widget/LetterScroller;)V
    .locals 1
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Landroid/widget/LetterScroller$FlashingArrow;->this$0:Landroid/widget/LetterScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 549
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LetterScroller$FlashingArrow;->count:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/LetterScroller;Landroid/widget/LetterScroller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 546
    invoke-direct {p0, p1}, Landroid/widget/LetterScroller$FlashingArrow;-><init>(Landroid/widget/LetterScroller;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 577
    iget-object v1, p0, Landroid/widget/LetterScroller$FlashingArrow;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mState:I
    invoke-static {v1}, Landroid/widget/LetterScroller;->access$000(Landroid/widget/LetterScroller;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/LetterScroller$FlashingArrow;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mFling:Landroid/widget/LetterScroller$FlingAction;
    invoke-static {v1}, Landroid/widget/LetterScroller;->access$1700(Landroid/widget/LetterScroller;)Landroid/widget/LetterScroller$FlingAction;

    move-result-object v1

    if-nez v1, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget-object v1, p0, Landroid/widget/LetterScroller$FlashingArrow;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;
    invoke-static {v1}, Landroid/widget/LetterScroller;->access$1100(Landroid/widget/LetterScroller;)Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    .line 582
    .local v0, viewWidth:I
    div-int/lit8 v1, v0, 0x2

    div-int/lit8 v2, v0, 0x4

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/LetterScroller$FlashingArrow;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/LetterScroller$FlashingArrow;->left:I

    .line 583
    iget v1, p0, Landroid/widget/LetterScroller$FlashingArrow;->left:I

    iget v2, p0, Landroid/widget/LetterScroller$FlashingArrow;->width:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/LetterScroller$FlashingArrow;->right:I

    .line 584
    iget-object v1, p0, Landroid/widget/LetterScroller$FlashingArrow;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mOverlay:Landroid/widget/LetterScroller$Overlay;
    invoke-static {v1}, Landroid/widget/LetterScroller;->access$1800(Landroid/widget/LetterScroller;)Landroid/widget/LetterScroller$Overlay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LetterScroller$Overlay;->getCenterY()I

    move-result v1

    iget v2, p0, Landroid/widget/LetterScroller$FlashingArrow;->height:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/LetterScroller$FlashingArrow;->top:I

    .line 585
    iget v1, p0, Landroid/widget/LetterScroller$FlashingArrow;->top:I

    iget v2, p0, Landroid/widget/LetterScroller$FlashingArrow;->height:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/LetterScroller$FlashingArrow;->bottom:I

    .line 586
    iget-object v1, p0, Landroid/widget/LetterScroller$FlashingArrow;->drawable:[Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/LetterScroller$FlashingArrow;->count:I

    aget-object v1, v1, v2

    iget v2, p0, Landroid/widget/LetterScroller$FlashingArrow;->left:I

    iget v3, p0, Landroid/widget/LetterScroller$FlashingArrow;->top:I

    iget v4, p0, Landroid/widget/LetterScroller$FlashingArrow;->right:I

    iget v5, p0, Landroid/widget/LetterScroller$FlashingArrow;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 587
    iget-object v1, p0, Landroid/widget/LetterScroller$FlashingArrow;->drawable:[Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/LetterScroller$FlashingArrow;->count:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Landroid/widget/LetterScroller$FlashingArrow;->count:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 559
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 560
    .local v0, res:Landroid/content/res/Resources;
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroid/widget/LetterScroller$FlashingArrow;->drawable:[Landroid/graphics/drawable/Drawable;

    .line 561
    iget-object v1, p0, Landroid/widget/LetterScroller$FlashingArrow;->drawable:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const v3, 0x10805db

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 563
    iget-object v1, p0, Landroid/widget/LetterScroller$FlashingArrow;->drawable:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    const v3, 0x10805dc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 565
    iget-object v1, p0, Landroid/widget/LetterScroller$FlashingArrow;->drawable:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    const v3, 0x10805dd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 567
    const/16 v1, 0xa0

    iput v1, p0, Landroid/widget/LetterScroller$FlashingArrow;->width:I

    .line 568
    const/16 v1, 0x50

    iput v1, p0, Landroid/widget/LetterScroller$FlashingArrow;->height:I

    .line 569
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 595
    iget-object v0, p0, Landroid/widget/LetterScroller$FlashingArrow;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mState:I
    invoke-static {v0}, Landroid/widget/LetterScroller;->access$000(Landroid/widget/LetterScroller;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 596
    iget v0, p0, Landroid/widget/LetterScroller$FlashingArrow;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/LetterScroller$FlashingArrow;->count:I

    .line 597
    iget v0, p0, Landroid/widget/LetterScroller$FlashingArrow;->count:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 598
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LetterScroller$FlashingArrow;->count:I

    .line 600
    :cond_0
    iget-object v0, p0, Landroid/widget/LetterScroller$FlashingArrow;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/LetterScroller;->access$500(Landroid/widget/LetterScroller;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 601
    iget-object v0, p0, Landroid/widget/LetterScroller$FlashingArrow;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;
    invoke-static {v0}, Landroid/widget/LetterScroller;->access$1100(Landroid/widget/LetterScroller;)Landroid/widget/AbsListView;

    move-result-object v0

    iget v1, p0, Landroid/widget/LetterScroller$FlashingArrow;->left:I

    iget v2, p0, Landroid/widget/LetterScroller$FlashingArrow;->top:I

    iget v3, p0, Landroid/widget/LetterScroller$FlashingArrow;->right:I

    iget v4, p0, Landroid/widget/LetterScroller$FlashingArrow;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->invalidate(IIII)V

    .line 603
    :cond_1
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LetterScroller$FlashingArrow;->count:I

    .line 573
    iget-object v0, p0, Landroid/widget/LetterScroller$FlashingArrow;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/LetterScroller;->access$500(Landroid/widget/LetterScroller;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 574
    return-void
.end method
