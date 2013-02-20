.class final Landroid/widget/LetterScroller$Overlay;
.super Ljava/lang/Object;
.source "LetterScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/LetterScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Overlay"
.end annotation


# instance fields
.field private bottom:I

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private left:I

.field private letter:Ljava/lang/String;

.field private paint:Landroid/graphics/Paint;

.field private right:I

.field private size:I

.field final synthetic this$0:Landroid/widget/LetterScroller;

.field private top:I


# direct methods
.method private constructor <init>(Landroid/widget/LetterScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Landroid/widget/LetterScroller$Overlay;->this$0:Landroid/widget/LetterScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/LetterScroller;Landroid/widget/LetterScroller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 467
    invoke-direct {p0, p1}, Landroid/widget/LetterScroller$Overlay;-><init>(Landroid/widget/LetterScroller;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 507
    iget-object v5, p0, Landroid/widget/LetterScroller$Overlay;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mState:I
    invoke-static {v5}, Landroid/widget/LetterScroller;->access$000(Landroid/widget/LetterScroller;)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 543
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v5, p0, Landroid/widget/LetterScroller$Overlay;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;
    invoke-static {v5}, Landroid/widget/LetterScroller;->access$1100(Landroid/widget/LetterScroller;)Landroid/widget/AbsListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    .line 512
    .local v4, viewWidth:I
    iget-object v5, p0, Landroid/widget/LetterScroller$Overlay;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;
    invoke-static {v5}, Landroid/widget/LetterScroller;->access$1100(Landroid/widget/LetterScroller;)Landroid/widget/AbsListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 515
    .local v3, viewHeight:I
    iget v5, p0, Landroid/widget/LetterScroller$Overlay;->size:I

    sub-int v5, v4, v5

    add-int/lit8 v5, v5, -0x3c

    iput v5, p0, Landroid/widget/LetterScroller$Overlay;->left:I

    .line 517
    iget v5, p0, Landroid/widget/LetterScroller$Overlay;->left:I

    iget v6, p0, Landroid/widget/LetterScroller$Overlay;->size:I

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/LetterScroller$Overlay;->right:I

    .line 524
    iget-object v5, p0, Landroid/widget/LetterScroller$Overlay;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mNowY:I
    invoke-static {v5}, Landroid/widget/LetterScroller;->access$400(Landroid/widget/LetterScroller;)I

    move-result v5

    iget v6, p0, Landroid/widget/LetterScroller$Overlay;->size:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/widget/LetterScroller$Overlay;->top:I

    .line 526
    iget v5, p0, Landroid/widget/LetterScroller$Overlay;->top:I

    if-gez v5, :cond_1

    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/LetterScroller$Overlay;->top:I

    .line 527
    :cond_1
    iget v5, p0, Landroid/widget/LetterScroller$Overlay;->top:I

    iget v6, p0, Landroid/widget/LetterScroller$Overlay;->size:I

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/LetterScroller$Overlay;->bottom:I

    .line 528
    iget v5, p0, Landroid/widget/LetterScroller$Overlay;->bottom:I

    if-le v5, v3, :cond_2

    .line 529
    iput v3, p0, Landroid/widget/LetterScroller$Overlay;->bottom:I

    .line 530
    iget v5, p0, Landroid/widget/LetterScroller$Overlay;->bottom:I

    iget v6, p0, Landroid/widget/LetterScroller$Overlay;->size:I

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/widget/LetterScroller$Overlay;->top:I

    .line 533
    :cond_2
    iget-object v5, p0, Landroid/widget/LetterScroller$Overlay;->drawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/LetterScroller$Overlay;->left:I

    iget v7, p0, Landroid/widget/LetterScroller$Overlay;->top:I

    iget v8, p0, Landroid/widget/LetterScroller$Overlay;->right:I

    iget v9, p0, Landroid/widget/LetterScroller$Overlay;->bottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 534
    iget-object v5, p0, Landroid/widget/LetterScroller$Overlay;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 536
    iget-object v5, p0, Landroid/widget/LetterScroller$Overlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 539
    .local v2, metrics:Landroid/graphics/Paint$FontMetrics;
    iget v5, p0, Landroid/widget/LetterScroller$Overlay;->left:I

    iget v6, p0, Landroid/widget/LetterScroller$Overlay;->size:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x6

    int-to-float v0, v5

    .line 541
    .local v0, fontX:F
    iget v5, p0, Landroid/widget/LetterScroller$Overlay;->top:I

    iget v6, p0, Landroid/widget/LetterScroller$Overlay;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v7, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    sub-float v1, v5, v6

    .line 542
    .local v1, fontY:F
    iget-object v5, p0, Landroid/widget/LetterScroller$Overlay;->letter:Ljava/lang/String;

    iget-object v6, p0, Landroid/widget/LetterScroller$Overlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getCenterY()I
    .locals 2

    .prologue
    .line 503
    iget v0, p0, Landroid/widget/LetterScroller$Overlay;->top:I

    iget v1, p0, Landroid/widget/LetterScroller$Overlay;->size:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 478
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 480
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x1080274

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/LetterScroller$Overlay;->drawable:Landroid/graphics/drawable/Drawable;

    .line 483
    const v1, 0x1050012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/LetterScroller$Overlay;->size:I

    .line 486
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/LetterScroller$Overlay;->paint:Landroid/graphics/Paint;

    .line 487
    iget-object v1, p0, Landroid/widget/LetterScroller$Overlay;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 488
    iget-object v1, p0, Landroid/widget/LetterScroller$Overlay;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 489
    iget-object v1, p0, Landroid/widget/LetterScroller$Overlay;->paint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/LetterScroller$Overlay;->size:I

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 494
    iget-object v1, p0, Landroid/widget/LetterScroller$Overlay;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 495
    iget-object v1, p0, Landroid/widget/LetterScroller$Overlay;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 496
    return-void
.end method

.method public setLetter(Ljava/lang/String;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 499
    iput-object p1, p0, Landroid/widget/LetterScroller$Overlay;->letter:Ljava/lang/String;

    .line 500
    return-void
.end method
