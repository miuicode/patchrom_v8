.class final Landroid/widget/LetterScroller$Panel;
.super Ljava/lang/Object;
.source "LetterScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/LetterScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Panel"
.end annotation


# static fields
.field public static final width:I = 0x3c


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;

.field private mSectionLettersPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Landroid/widget/LetterScroller;


# direct methods
.method private constructor <init>(Landroid/widget/LetterScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/LetterScroller;Landroid/widget/LetterScroller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 367
    invoke-direct {p0, p1}, Landroid/widget/LetterScroller$Panel;-><init>(Landroid/widget/LetterScroller;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 398
    iget-object v5, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;
    invoke-static {v5}, Landroid/widget/LetterScroller;->access$1100(Landroid/widget/LetterScroller;)Landroid/widget/AbsListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    .line 399
    .local v4, viewWidth:I
    iget-object v5, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;
    invoke-static {v5}, Landroid/widget/LetterScroller;->access$1100(Landroid/widget/LetterScroller;)Landroid/widget/AbsListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 400
    .local v3, viewHeigth:I
    iget-object v5, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mScrollFade:Landroid/widget/LetterScroller$ScrollFade;
    invoke-static {v5}, Landroid/widget/LetterScroller;->access$900(Landroid/widget/LetterScroller;)Landroid/widget/LetterScroller$ScrollFade;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LetterScroller$ScrollFade;->getAlpha()I

    move-result v0

    .line 401
    .local v0, alpha:I
    iget-object v5, p0, Landroid/widget/LetterScroller$Panel;->drawable:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v6, v4, -0x3c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 402
    iget-object v5, p0, Landroid/widget/LetterScroller$Panel;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 403
    iget-object v5, p0, Landroid/widget/LetterScroller$Panel;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 407
    iget-object v5, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mSectionLetters:Ljava/lang/String;
    invoke-static {v5}, Landroid/widget/LetterScroller;->access$1200(Landroid/widget/LetterScroller;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 408
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mSectionLetters:Ljava/lang/String;
    invoke-static {v5}, Landroid/widget/LetterScroller;->access$1200(Landroid/widget/LetterScroller;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 409
    iget-object v5, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mSectionLetters:Ljava/lang/String;
    invoke-static {v5}, Landroid/widget/LetterScroller;->access$1200(Landroid/widget/LetterScroller;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mSectionLettersPos:[F
    invoke-static {v6}, Landroid/widget/LetterScroller;->access$1300(Landroid/widget/LetterScroller;)[F

    move-result-object v6

    mul-int/lit8 v7, v1, 0x2

    aget v6, v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    iget-object v7, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mSectionLettersPos:[F
    invoke-static {v7}, Landroid/widget/LetterScroller;->access$1300(Landroid/widget/LetterScroller;)[F

    move-result-object v7

    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    iget-object v8, p0, Landroid/widget/LetterScroller$Panel;->mSectionLettersPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    .end local v1           #i:I
    :cond_0
    iget-object v5, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mNoDataLetters:Ljava/lang/String;
    invoke-static {v5}, Landroid/widget/LetterScroller;->access$1400(Landroid/widget/LetterScroller;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 415
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v5, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mNoDataLetters:Ljava/lang/String;
    invoke-static {v5}, Landroid/widget/LetterScroller;->access$1400(Landroid/widget/LetterScroller;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 416
    iget-object v5, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mNoDataLetters:Ljava/lang/String;
    invoke-static {v5}, Landroid/widget/LetterScroller;->access$1400(Landroid/widget/LetterScroller;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mNoDataLettersPos:[F
    invoke-static {v6}, Landroid/widget/LetterScroller;->access$1500(Landroid/widget/LetterScroller;)[F

    move-result-object v6

    mul-int/lit8 v7, v2, 0x2

    aget v6, v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    iget-object v7, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mNoDataLettersPos:[F
    invoke-static {v7}, Landroid/widget/LetterScroller;->access$1500(Landroid/widget/LetterScroller;)[F

    move-result-object v7

    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    iget-object v8, p0, Landroid/widget/LetterScroller$Panel;->mSectionLettersPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 415
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 423
    .end local v2           #j:I
    :cond_1
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const v4, 0x3e99999a

    const/16 v3, 0x80

    .line 374
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 375
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x10805de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/LetterScroller$Panel;->drawable:Landroid/graphics/drawable/Drawable;

    .line 388
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/LetterScroller$Panel;->mSectionLettersPaint:Landroid/graphics/Paint;

    .line 389
    iget-object v1, p0, Landroid/widget/LetterScroller$Panel;->mSectionLettersPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 390
    iget-object v1, p0, Landroid/widget/LetterScroller$Panel;->mSectionLettersPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 391
    iget-object v1, p0, Landroid/widget/LetterScroller$Panel;->mSectionLettersPaint:Landroid/graphics/Paint;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    iget-object v1, p0, Landroid/widget/LetterScroller$Panel;->mSectionLettersPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 393
    iget-object v1, p0, Landroid/widget/LetterScroller$Panel;->mSectionLettersPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 394
    iget-object v1, p0, Landroid/widget/LetterScroller$Panel;->mSectionLettersPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 395
    return-void
.end method

.method invalidate()V
    .locals 5

    .prologue
    .line 461
    iget-object v2, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;
    invoke-static {v2}, Landroid/widget/LetterScroller;->access$1100(Landroid/widget/LetterScroller;)Landroid/widget/AbsListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getWidth()I

    move-result v1

    .line 462
    .local v1, viewWidth:I
    iget-object v2, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;
    invoke-static {v2}, Landroid/widget/LetterScroller;->access$1100(Landroid/widget/LetterScroller;)Landroid/widget/AbsListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    .line 463
    .local v0, viewHeigth:I
    iget-object v2, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;
    invoke-static {v2}, Landroid/widget/LetterScroller;->access$1100(Landroid/widget/LetterScroller;)Landroid/widget/AbsListView;

    move-result-object v2

    add-int/lit8 v3, v1, -0x3c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/widget/AbsListView;->invalidate(IIII)V

    .line 464
    return-void
.end method

.method isPointInside(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 456
    iget-object v0, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;
    invoke-static {v0}, Landroid/widget/LetterScroller;->access$1100(Landroid/widget/LetterScroller;)Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3c

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mLetterH:I
    invoke-static {v0}, Landroid/widget/LetterScroller;->access$1600(Landroid/widget/LetterScroller;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mLetterH:I
    invoke-static {v0}, Landroid/widget/LetterScroller;->access$1600(Landroid/widget/LetterScroller;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1b

    iget-object v1, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mLetterH:I
    invoke-static {v1}, Landroid/widget/LetterScroller;->access$1600(Landroid/widget/LetterScroller;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadLetterPos(II)V
    .locals 9
    .parameter "w"
    .parameter "h"

    .prologue
    const/16 v8, 0x1b

    .line 426
    const/4 v0, 0x0

    .local v0, a:I
    const/4 v1, 0x0

    .line 427
    .local v1, b:I
    add-int/lit8 p2, p2, -0xa

    .line 428
    iget-object v6, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    div-int/lit8 v7, p2, 0x1b

    #setter for: Landroid/widget/LetterScroller;->mLetterH:I
    invoke-static {v6, v7}, Landroid/widget/LetterScroller;->access$1602(Landroid/widget/LetterScroller;I)I

    .line 429
    rem-int/lit8 v6, p2, 0x1b

    div-int/lit8 v6, v6, 0x3

    iget-object v7, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mLetterH:I
    invoke-static {v7}, Landroid/widget/LetterScroller;->access$1600(Landroid/widget/LetterScroller;)I

    move-result v7

    add-int v3, v6, v7

    .line 434
    .local v3, offset:I
    iget-object v6, p0, Landroid/widget/LetterScroller$Panel;->mSectionLettersPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mLetterH:I
    invoke-static {v7}, Landroid/widget/LetterScroller;->access$1600(Landroid/widget/LetterScroller;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 437
    .local v4, sb:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 438
    .local v5, sb1:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const-string v6, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 439
    iget-object v6, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mSectionLetters:Ljava/lang/String;
    invoke-static {v6}, Landroid/widget/LetterScroller;->access$1200(Landroid/widget/LetterScroller;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 440
    const-string v6, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 441
    iget-object v6, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mSectionLettersPos:[F
    invoke-static {v6}, Landroid/widget/LetterScroller;->access$1300(Landroid/widget/LetterScroller;)[F

    move-result-object v6

    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v8, p1, -0x1e

    int-to-float v8, v8

    aput v8, v6, v7

    .line 442
    iget-object v6, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mSectionLettersPos:[F
    invoke-static {v6}, Landroid/widget/LetterScroller;->access$1300(Landroid/widget/LetterScroller;)[F

    move-result-object v6

    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mLetterH:I
    invoke-static {v8}, Landroid/widget/LetterScroller;->access$1600(Landroid/widget/LetterScroller;)I

    move-result v8

    mul-int/2addr v8, v2

    add-int/2addr v8, v3

    int-to-float v8, v8

    aput v8, v6, v7

    .line 443
    add-int/lit8 v0, v0, 0x1

    .line 438
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    :cond_0
    const-string v6, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 446
    iget-object v6, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mNoDataLettersPos:[F
    invoke-static {v6}, Landroid/widget/LetterScroller;->access$1500(Landroid/widget/LetterScroller;)[F

    move-result-object v6

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v8, p1, -0x1e

    int-to-float v8, v8

    aput v8, v6, v7

    .line 447
    iget-object v6, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mNoDataLettersPos:[F
    invoke-static {v6}, Landroid/widget/LetterScroller;->access$1500(Landroid/widget/LetterScroller;)[F

    move-result-object v6

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    #getter for: Landroid/widget/LetterScroller;->mLetterH:I
    invoke-static {v8}, Landroid/widget/LetterScroller;->access$1600(Landroid/widget/LetterScroller;)I

    move-result v8

    mul-int/2addr v8, v2

    add-int/2addr v8, v3

    int-to-float v8, v8

    aput v8, v6, v7

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 451
    :cond_1
    iget-object v6, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #setter for: Landroid/widget/LetterScroller;->mNoDataLetters:Ljava/lang/String;
    invoke-static {v6, v7}, Landroid/widget/LetterScroller;->access$1402(Landroid/widget/LetterScroller;Ljava/lang/String;)Ljava/lang/String;

    .line 452
    iget-object v6, p0, Landroid/widget/LetterScroller$Panel;->this$0:Landroid/widget/LetterScroller;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #setter for: Landroid/widget/LetterScroller;->mSectionLetters:Ljava/lang/String;
    invoke-static {v6, v7}, Landroid/widget/LetterScroller;->access$1202(Landroid/widget/LetterScroller;Ljava/lang/String;)Ljava/lang/String;

    .line 453
    return-void
.end method
