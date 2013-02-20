.class public Landroid/widget/TYCTLHorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "TYCTLHorizontalScrollView.java"


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.5f


# instance fields
.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScrollViewMovedFocus:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TYCTLHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 138
    const v0, 0x1010353

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TYCTLHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 85
    iput-boolean v3, p0, Landroid/widget/TYCTLHorizontalScrollView;->mIsLayoutDirty:Z

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/TYCTLHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 99
    iput-boolean v2, p0, Landroid/widget/TYCTLHorizontalScrollView;->mIsBeingDragged:Z

    .line 115
    iput-boolean v3, p0, Landroid/widget/TYCTLHorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 125
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/TYCTLHorizontalScrollView;->mActivePointerId:I

    .line 143
    invoke-direct {p0}, Landroid/widget/TYCTLHorizontalScrollView;->initScrollView()V

    .line 145
    sget-object v1, Landroid/R$styleable;->HorizontalScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 148
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TYCTLHorizontalScrollView;->setFillViewport(Z)V

    .line 150
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 243
    invoke-virtual {p0, v2}, Landroid/widget/TYCTLHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 244
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 246
    .local v1, childWidth:I
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 248
    .end local v1           #childWidth:I
    :cond_0
    return v2
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1301
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 1302
    :cond_0
    const/4 p1, 0x0

    .line 1307
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 1304
    .restart local p1
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 1305
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private doScrollX(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 896
    if-eqz p1, :cond_0

    .line 897
    iget-boolean v0, p0, Landroid/widget/TYCTLHorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 898
    invoke-virtual {p0, p1, v1}, Landroid/widget/TYCTLHorizontalScrollView;->smoothScrollBy(II)V

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/widget/TYCTLHorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "leftFocus"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 639
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/widget/TYCTLHorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 640
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 649
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 651
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 652
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 653
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 654
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 655
    .local v8, viewLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 657
    .local v9, viewRight:I
    if-ge p2, v9, :cond_0

    if-ge v8, p3, :cond_0

    .line 663
    if-ge p2, v8, :cond_1

    if-ge v9, p3, :cond_1

    const/4 v7, 0x1

    .line 666
    .local v7, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 668
    move-object v1, v5

    .line 669
    move v3, v7

    .line 652
    .end local v7           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 663
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 671
    .restart local v7       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_5

    :cond_4
    const/4 v6, 0x1

    .line 675
    .local v6, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 676
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 682
    move-object v1, v5

    goto :goto_2

    .line 671
    .end local v6           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 685
    .restart local v6       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v7, :cond_7

    .line 687
    move-object v1, v5

    .line 688
    const/4 v3, 0x1

    goto :goto_2

    .line 689
    :cond_7
    if-eqz v6, :cond_0

    .line 694
    move-object v1, v5

    goto :goto_2

    .line 701
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewIsCloserToBoundary:Z
    .end local v7           #viewIsFullyContained:Z
    .end local v8           #viewLeft:I
    .end local v9           #viewRight:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "leftFocus"
    .parameter "left"
    .parameter "preferredFocusable"

    .prologue
    .line 608
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 609
    .local v0, fadingEdgeLength:I
    add-int v1, p2, v0

    .line 610
    .local v1, leftWithoutFadingEdge:I
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 612
    .local v2, rightWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 618
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Landroid/widget/TYCTLHorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 576
    const/4 v1, 0x0

    .line 577
    .local v1, scrollRange:I
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 578
    invoke-virtual {p0, v4}, Landroid/widget/TYCTLHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 579
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 582
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 375
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 376
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 377
    .local v1, scrollX:I
    invoke-virtual {p0, v2}, Landroid/widget/TYCTLHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 378
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 383
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollX:I
    :cond_0
    return v2
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 193
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/TYCTLHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    .line 194
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TYCTLHorizontalScrollView;->setFocusable(Z)V

    .line 195
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/TYCTLHorizontalScrollView;->setDescendantFocusability(I)V

    .line 196
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TYCTLHorizontalScrollView;->setWillNotDraw(Z)V

    .line 197
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 198
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTouchSlop:I

    .line 199
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/TYCTLHorizontalScrollView;->mMinimumVelocity:I

    .line 200
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/TYCTLHorizontalScrollView;->mMaximumVelocity:I

    .line 201
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 875
    invoke-direct {p0, p1, v0}, Landroid/widget/TYCTLHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 1241
    if-ne p1, p2, :cond_1

    .line 1246
    :cond_0
    :goto_0
    return v1

    .line 1245
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1246
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/TYCTLHorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 3
    .parameter "descendant"
    .parameter "delta"

    .prologue
    .line 883
    iget-object v0, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 884
    iget-object v0, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TYCTLHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 886
    iget-object v0, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 559
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 561
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 562
    .local v1, pointerId:I
    iget v3, p0, Landroid/widget/TYCTLHorizontalScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 566
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 567
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Landroid/widget/TYCTLHorizontalScrollView;->mLastMotionX:F

    .line 568
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/TYCTLHorizontalScrollView;->mActivePointerId:I

    .line 569
    iget-object v3, p0, Landroid/widget/TYCTLHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 570
    iget-object v3, p0, Landroid/widget/TYCTLHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 573
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 566
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10
    .parameter "direction"
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 784
    const/4 v4, 0x1

    .line 786
    .local v4, handled:Z
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getWidth()I

    move-result v6

    .line 787
    .local v6, width:I
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getScrollX()I

    move-result v0

    .line 788
    .local v0, containerLeft:I
    add-int v1, v0, v6

    .line 789
    .local v1, containerRight:I
    const/16 v9, 0x11

    if-ne p1, v9, :cond_2

    move v3, v7

    .line 791
    .local v3, goLeft:Z
    :goto_0
    invoke-direct {p0, v3, p2, p3}, Landroid/widget/TYCTLHorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 792
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 793
    move-object v5, p0

    .line 796
    :cond_0
    if-lt p2, v0, :cond_3

    if-gt p3, v1, :cond_3

    .line 797
    const/4 v4, 0x0

    .line 803
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v9

    if-eq v5, v9, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 804
    iput-boolean v7, p0, Landroid/widget/TYCTLHorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 805
    iput-boolean v8, p0, Landroid/widget/TYCTLHorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 808
    :cond_1
    return v4

    .end local v3           #goLeft:Z
    .end local v5           #newFocused:Landroid/view/View;
    :cond_2
    move v3, v8

    .line 789
    goto :goto_0

    .line 799
    .restart local v3       #goLeft:Z
    .restart local v5       #newFocused:Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    sub-int v2, p2, v0

    .line 800
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Landroid/widget/TYCTLHorizontalScrollView;->doScrollX(I)V

    goto :goto_1

    .line 799
    .end local v2           #delta:I
    :cond_4
    sub-int v2, p3, v1

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1041
    iget-object v1, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1044
    iget-object v1, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/TYCTLHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1046
    iget-object v1, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/TYCTLHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1048
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1049
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/TYCTLHorizontalScrollView;->scrollBy(II)V

    .line 1051
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1062
    invoke-virtual {p0, p1}, Landroid/widget/TYCTLHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1063
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1064
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1065
    if-eqz p2, :cond_2

    .line 1066
    invoke-virtual {p0, v0, v2}, Landroid/widget/TYCTLHorizontalScrollView;->scrollBy(II)V

    .line 1071
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v2

    .line 1063
    goto :goto_0

    .line 1068
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v0, v2}, Landroid/widget/TYCTLHorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 205
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 210
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 219
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 237
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x42

    const/4 v7, 0x0

    .line 820
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 821
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 823
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 825
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 827
    .local v3, maxJump:I
    if-eqz v4, :cond_3

    invoke-direct {p0, v4, v3}, Landroid/widget/TYCTLHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 828
    iget-object v7, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 829
    iget-object v7, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/widget/TYCTLHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 830
    iget-object v7, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/widget/TYCTLHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 831
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Landroid/widget/TYCTLHorizontalScrollView;->doScrollX(I)V

    .line 832
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 855
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Landroid/widget/TYCTLHorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 862
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getDescendantFocusability()I

    move-result v2

    .line 863
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/TYCTLHorizontalScrollView;->setDescendantFocusability(I)V

    .line 864
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->requestFocus()Z

    .line 865
    invoke-virtual {p0, v2}, Landroid/widget/TYCTLHorizontalScrollView;->setDescendantFocusability(I)V

    .line 867
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 835
    .end local v6           #scrollDelta:I
    :cond_3
    move v6, v3

    .line 837
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x11

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getScrollX()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 838
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getScrollX()I

    move-result v6

    .line 849
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 852
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Landroid/widget/TYCTLHorizontalScrollView;->doScrollX(I)V

    goto :goto_0

    .line 839
    :cond_5
    if-ne p1, v10, :cond_4

    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 841
    invoke-virtual {p0, v7}, Landroid/widget/TYCTLHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    .line 843
    .local v1, daRight:I
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getWidth()I

    move-result v9

    add-int v5, v8, v9

    .line 845
    .local v5, screenRight:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 846
    sub-int v6, v1, v5

    goto :goto_1

    .line 852
    .end local v1           #daRight:I
    .end local v5           #screenRight:I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 962
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 4

    .prologue
    .line 951
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getChildCount()I

    move-result v1

    .line 952
    .local v1, count:I
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v2, v3

    .line 953
    .local v0, contentWidth:I
    if-nez v1, :cond_0

    .line 957
    .end local v0           #contentWidth:I
    :goto_0
    return v0

    .restart local v0       #contentWidth:I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/TYCTLHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    .line 996
    iget-object v5, p0, Landroid/widget/TYCTLHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1013
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 1014
    .local v1, oldX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 1015
    .local v2, oldY:I
    iget-object v5, p0, Landroid/widget/TYCTLHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 1016
    .local v3, x:I
    iget-object v5, p0, Landroid/widget/TYCTLHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 1018
    .local v4, y:I
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1019
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/TYCTLHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1020
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Landroid/widget/TYCTLHorizontalScrollView;->clamp(III)I

    move-result v3

    .line 1021
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Landroid/widget/TYCTLHorizontalScrollView;->clamp(III)I

    move-result v4

    .line 1022
    if-ne v3, v1, :cond_0

    if-eq v4, v2, :cond_1

    .line 1023
    :cond_0
    iput v3, p0, Landroid/view/View;->mScrollX:I

    .line 1024
    iput v4, p0, Landroid/view/View;->mScrollY:I

    .line 1025
    invoke-virtual {p0, v3, v4, v1, v2}, Landroid/widget/TYCTLHorizontalScrollView;->onScrollChanged(IIII)V

    .line 1028
    .end local v0           #child:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->awakenScrollBars()Z

    .line 1031
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->postInvalidate()V

    .line 1033
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_2
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1083
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v5, v7

    .line 1137
    :cond_0
    :goto_0
    return v5

    .line 1085
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getWidth()I

    move-result v6

    .line 1086
    .local v6, width:I
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getScrollX()I

    move-result v3

    .line 1087
    .local v3, screenLeft:I
    add-int v4, v3, v6

    .line 1089
    .local v4, screenRight:I
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 1092
    .local v1, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-lez v8, :cond_2

    .line 1093
    add-int/2addr v3, v1

    .line 1097
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v7}, Landroid/widget/TYCTLHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1098
    sub-int/2addr v4, v1

    .line 1101
    :cond_3
    const/4 v5, 0x0

    .line 1103
    .local v5, scrollXDelta:I
    iget v8, p1, Landroid/graphics/Rect;->right:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-le v8, v3, :cond_5

    .line 1108
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v8, v6, :cond_4

    .line 1110
    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v3

    add-int/2addr v5, v8

    .line 1117
    :goto_1
    invoke-virtual {p0, v7}, Landroid/widget/TYCTLHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1118
    .local v2, right:I
    sub-int v0, v2, v4

    .line 1119
    .local v0, distanceToRight:I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1121
    goto :goto_0

    .line 1113
    .end local v0           #distanceToRight:I
    .end local v2           #right:I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    add-int/2addr v5, v8

    goto :goto_1

    .line 1121
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_0

    .line 1126
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6

    .line 1128
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    .line 1135
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    .line 1131
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TYCTLHorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x11

    const/16 v5, 0x42

    .line 334
    iget-object v6, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 336
    invoke-direct {p0}, Landroid/widget/TYCTLHorizontalScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 337
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 338
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 339
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 340
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 342
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 371
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 348
    :cond_2
    const/4 v1, 0x0

    .line 349
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 350
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 371
    goto :goto_0

    .line 352
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 353
    invoke-virtual {p0, v4}, Landroid/widget/TYCTLHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 355
    :cond_4
    invoke-virtual {p0, v4}, Landroid/widget/TYCTLHorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 357
    goto :goto_1

    .line 359
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 360
    invoke-virtual {p0, v5}, Landroid/widget/TYCTLHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 362
    :cond_5
    invoke-virtual {p0, v5}, Landroid/widget/TYCTLHorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 364
    goto :goto_1

    .line 366
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Landroid/widget/TYCTLHorizontalScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 350
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 14
    .parameter "velocityX"

    .prologue
    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 1257
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1258
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v12, v0, v1

    .line 1259
    .local v12, width:I
    invoke-virtual {p0, v4}, Landroid/widget/TYCTLHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 1261
    .local v11, right:I
    iget-object v0, p0, Landroid/widget/TYCTLHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    sub-int v3, v11, v12

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v3, p1

    move v5, v4

    move v7, v4

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1264
    if-lez p1, :cond_3

    move v9, v13

    .line 1266
    .local v9, movingRight:Z
    :goto_0
    iget-object v0, p0, Landroid/widget/TYCTLHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v9, v0, v1}, Landroid/widget/TYCTLHorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v10

    .line 1269
    .local v10, newFocused:Landroid/view/View;
    if-nez v10, :cond_0

    .line 1270
    move-object v10, p0

    .line 1273
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v10, v0, :cond_1

    if-eqz v9, :cond_4

    const/16 v0, 0x42

    :goto_1
    invoke-virtual {v10, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1275
    iput-boolean v13, p0, Landroid/widget/TYCTLHorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 1276
    iput-boolean v4, p0, Landroid/widget/TYCTLHorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 1279
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->invalidate()V

    .line 1281
    .end local v9           #movingRight:Z
    .end local v10           #newFocused:Landroid/view/View;
    .end local v11           #right:I
    .end local v12           #width:I
    :cond_2
    return-void

    .restart local v11       #right:I
    .restart local v12       #width:I
    :cond_3
    move v9, v4

    .line 1264
    goto :goto_0

    .line 1273
    .restart local v9       #movingRight:Z
    .restart local v10       #newFocused:Landroid/view/View;
    :cond_4
    const/16 v0, 0x11

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 753
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 754
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getWidth()I

    move-result v3

    .line 756
    .local v3, width:I
    iget-object v5, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 757
    iget-object v5, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 759
    if-eqz v1, :cond_0

    .line 760
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 761
    .local v0, count:I
    if-lez v0, :cond_0

    .line 762
    invoke-virtual {p0, v4}, Landroid/widget/TYCTLHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 763
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 764
    iget-object v4, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 768
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/TYCTLHorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v4

    .line 753
    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const/4 v1, 0x0

    .line 164
    :goto_0
    return v1

    .line 159
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 160
    .local v0, length:I
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 161
    iget v1, p0, Landroid/view/View;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 164
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 188
    const/high16 v0, 0x3f00

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 170
    const/4 v3, 0x0

    .line 180
    :goto_0
    return v3

    .line 173
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 174
    .local v0, length:I
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 175
    .local v1, rightEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/TYCTLHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 176
    .local v2, span:I
    if-ge v2, v0, :cond_1

    .line 177
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .line 180
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Landroid/widget/TYCTLHorizontalScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Landroid/widget/TYCTLHorizontalScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 967
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 972
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/widget/TYCTLHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 975
    .local v0, childHeightMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 977
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 978
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 983
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 985
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/widget/TYCTLHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 988
    .local v0, childHeightMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 991
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 992
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 401
    .local v0, action:I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    iget-boolean v6, p0, Landroid/widget/TYCTLHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v6, :cond_0

    .line 472
    :goto_0
    return v5

    .line 405
    :cond_0
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    .line 472
    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v5, p0, Landroid/widget/TYCTLHorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 416
    :pswitch_1
    iget v1, p0, Landroid/widget/TYCTLHorizontalScrollView;->mActivePointerId:I

    .line 417
    .local v1, activePointerId:I
    if-eq v1, v8, :cond_1

    .line 422
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 423
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 424
    .local v3, x:F
    iget v6, p0, Landroid/widget/TYCTLHorizontalScrollView;->mLastMotionX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v4, v6

    .line 425
    .local v4, xDiff:I
    iget v6, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTouchSlop:I

    if-le v4, v6, :cond_1

    .line 426
    iput-boolean v5, p0, Landroid/widget/TYCTLHorizontalScrollView;->mIsBeingDragged:Z

    .line 427
    iput v3, p0, Landroid/widget/TYCTLHorizontalScrollView;->mLastMotionX:F

    .line 428
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 434
    .end local v1           #activePointerId:I
    .end local v2           #pointerIndex:I
    .end local v3           #x:F
    .end local v4           #xDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 435
    .restart local v3       #x:F
    float-to-int v5, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {p0, v5, v6}, Landroid/widget/TYCTLHorizontalScrollView;->inChild(II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 436
    iput-boolean v7, p0, Landroid/widget/TYCTLHorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 444
    :cond_2
    iput v3, p0, Landroid/widget/TYCTLHorizontalScrollView;->mLastMotionX:F

    .line 445
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/widget/TYCTLHorizontalScrollView;->mActivePointerId:I

    .line 453
    iput-boolean v7, p0, Landroid/widget/TYCTLHorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 460
    .end local v3           #x:F
    :pswitch_3
    iput-boolean v7, p0, Landroid/widget/TYCTLHorizontalScrollView;->mIsBeingDragged:Z

    .line 461
    iput v8, p0, Landroid/widget/TYCTLHorizontalScrollView;->mActivePointerId:I

    goto :goto_1

    .line 464
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/widget/TYCTLHorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1207
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1208
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TYCTLHorizontalScrollView;->mIsLayoutDirty:Z

    .line 1210
    iget-object v0, p0, Landroid/widget/TYCTLHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TYCTLHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Landroid/widget/TYCTLHorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Landroid/widget/TYCTLHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/TYCTLHorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1213
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TYCTLHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1216
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/TYCTLHorizontalScrollView;->scrollTo(II)V

    .line 1217
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 291
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 293
    iget-boolean v6, p0, Landroid/widget/TYCTLHorizontalScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 298
    .local v5, widthMode:I
    if-eqz v5, :cond_0

    .line 302
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 303
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/TYCTLHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 304
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getMeasuredWidth()I

    move-result v4

    .line 305
    .local v4, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v6, v4, :cond_0

    .line 306
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 308
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v6, v7}, Landroid/widget/TYCTLHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 310
    .local v1, childHeightMeasureSpec:I
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v4, v6

    .line 311
    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v4, v6

    .line 312
    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 314
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 1167
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1168
    const/16 p1, 0x42

    .line 1173
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1178
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1186
    :cond_1
    :goto_2
    return v1

    .line 1169
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1170
    const/16 p1, 0x11

    goto :goto_0

    .line 1173
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1182
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/TYCTLHorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1186
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1223
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1224
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1235
    :cond_0
    :goto_0
    return-void

    .line 1227
    :cond_1
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int v1, v3, v4

    .line 1229
    .local v1, maxJump:I
    invoke-direct {p0, v0, v1}, Landroid/widget/TYCTLHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1230
    iget-object v3, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1231
    iget-object v3, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Landroid/widget/TYCTLHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1232
    iget-object v3, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/widget/TYCTLHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1233
    .local v2, scrollDelta:I
    invoke-direct {p0, v2}, Landroid/widget/TYCTLHorizontalScrollView;->doScrollX(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v7

    if-eqz v7, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v6

    .line 484
    :cond_1
    iget-object v7, p0, Landroid/widget/TYCTLHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_2

    .line 485
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/TYCTLHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 487
    :cond_2
    iget-object v7, p0, Landroid/widget/TYCTLHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 489
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 491
    .local v0, action:I
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    .line 555
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v6, 0x1

    goto :goto_0

    .line 493
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 494
    .local v5, x:F
    float-to-int v7, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {p0, v7, v8}, Landroid/widget/TYCTLHorizontalScrollView;->inChild(II)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/TYCTLHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_0

    .line 502
    iget-object v7, p0, Landroid/widget/TYCTLHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_4

    .line 503
    iget-object v7, p0, Landroid/widget/TYCTLHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 507
    :cond_4
    iput v5, p0, Landroid/widget/TYCTLHorizontalScrollView;->mLastMotionX:F

    .line 508
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Landroid/widget/TYCTLHorizontalScrollView;->mActivePointerId:I

    goto :goto_1

    .line 512
    .end local v5           #x:F
    :pswitch_2
    iget-boolean v7, p0, Landroid/widget/TYCTLHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_3

    .line 514
    iget v7, p0, Landroid/widget/TYCTLHorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 515
    .local v1, activePointerIndex:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 516
    .restart local v5       #x:F
    iget v7, p0, Landroid/widget/TYCTLHorizontalScrollView;->mLastMotionX:F

    sub-float/2addr v7, v5

    float-to-int v2, v7

    .line 517
    .local v2, deltaX:I
    iput v5, p0, Landroid/widget/TYCTLHorizontalScrollView;->mLastMotionX:F

    .line 519
    invoke-virtual {p0, v2, v6}, Landroid/widget/TYCTLHorizontalScrollView;->scrollBy(II)V

    goto :goto_1

    .line 523
    .end local v1           #activePointerIndex:I
    .end local v2           #deltaX:I
    .end local v5           #x:F
    :pswitch_3
    iget-boolean v7, p0, Landroid/widget/TYCTLHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_3

    .line 524
    iget-object v4, p0, Landroid/widget/TYCTLHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 525
    .local v4, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v7, 0x3e8

    iget v8, p0, Landroid/widget/TYCTLHorizontalScrollView;->mMaximumVelocity:I

    int-to-float v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 526
    iget v7, p0, Landroid/widget/TYCTLHorizontalScrollView;->mActivePointerId:I

    invoke-virtual {v4, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v7

    float-to-int v3, v7

    .line 528
    .local v3, initialVelocity:I
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Landroid/widget/TYCTLHorizontalScrollView;->mMinimumVelocity:I

    if-le v7, v8, :cond_5

    .line 529
    neg-int v7, v3

    invoke-virtual {p0, v7}, Landroid/widget/TYCTLHorizontalScrollView;->fling(I)V

    .line 532
    :cond_5
    iput v9, p0, Landroid/widget/TYCTLHorizontalScrollView;->mActivePointerId:I

    .line 533
    iput-boolean v6, p0, Landroid/widget/TYCTLHorizontalScrollView;->mIsBeingDragged:Z

    .line 535
    iget-object v6, p0, Landroid/widget/TYCTLHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_3

    .line 536
    iget-object v6, p0, Landroid/widget/TYCTLHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 537
    iput-object v10, p0, Landroid/widget/TYCTLHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 542
    .end local v3           #initialVelocity:I
    .end local v4           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_4
    iget-boolean v7, p0, Landroid/widget/TYCTLHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 543
    iput v9, p0, Landroid/widget/TYCTLHorizontalScrollView;->mActivePointerId:I

    .line 544
    iput-boolean v6, p0, Landroid/widget/TYCTLHorizontalScrollView;->mIsBeingDragged:Z

    .line 545
    iget-object v6, p0, Landroid/widget/TYCTLHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_3

    .line 546
    iget-object v6, p0, Landroid/widget/TYCTLHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 547
    iput-object v10, p0, Landroid/widget/TYCTLHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 552
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/TYCTLHorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 491
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 717
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 718
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getWidth()I

    move-result v3

    .line 720
    .local v3, width:I
    if-eqz v1, :cond_2

    .line 721
    iget-object v5, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 722
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 723
    .local v0, count:I
    if-lez v0, :cond_0

    .line 724
    invoke-virtual {p0, v4}, Landroid/widget/TYCTLHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 725
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 726
    iget-object v4, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 735
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 737
    iget-object v4, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/TYCTLHorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v4

    .line 717
    goto :goto_0

    .line 730
    .restart local v1       #right:Z
    .restart local v3       #width:I
    :cond_2
    iget-object v5, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getScrollX()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 731
    iget-object v5, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_0

    .line 732
    iget-object v5, p0, Landroid/widget/TYCTLHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1142
    iget-boolean v0, p0, Landroid/widget/TYCTLHorizontalScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1143
    iget-boolean v0, p0, Landroid/widget/TYCTLHorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1144
    invoke-direct {p0, p2}, Landroid/widget/TYCTLHorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1150
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1151
    return-void

    .line 1147
    :cond_1
    iput-object p2, p0, Landroid/widget/TYCTLHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1193
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1196
    invoke-direct {p0, p2, p3}, Landroid/widget/TYCTLHorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1201
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TYCTLHorizontalScrollView;->mIsLayoutDirty:Z

    .line 1202
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1203
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1290
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1291
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TYCTLHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1292
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Landroid/widget/TYCTLHorizontalScrollView;->clamp(III)I

    move-result p1

    .line 1293
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Landroid/widget/TYCTLHorizontalScrollView;->clamp(III)I

    move-result p2

    .line 1294
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1295
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1298
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 268
    iget-boolean v0, p0, Landroid/widget/TYCTLHorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 269
    iput-boolean p1, p0, Landroid/widget/TYCTLHorizontalScrollView;->mFillViewport:Z

    .line 270
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->requestLayout()V

    .line 272
    :cond_0
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 286
    iput-boolean p1, p0, Landroid/widget/TYCTLHorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 287
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v10, 0x0

    .line 912
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 933
    :goto_0
    return-void

    .line 916
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/TYCTLHorizontalScrollView;->mLastScroll:J

    sub-long v0, v6, v8

    .line 917
    .local v0, duration:J
    const-wide/16 v6, 0xfa

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 918
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->getWidth()I

    move-result v6

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v5, v6, v7

    .line 919
    .local v5, width:I
    invoke-virtual {p0, v10}, Landroid/widget/TYCTLHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 920
    .local v3, right:I
    sub-int v6, v3, v5

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 921
    .local v2, maxX:I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    .line 922
    .local v4, scrollX:I
    add-int v6, v4, p1

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p1, v6, v4

    .line 924
    iget-object v6, p0, Landroid/widget/TYCTLHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    iget v7, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v6, v4, v7, p1, v10}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 925
    invoke-virtual {p0}, Landroid/widget/TYCTLHorizontalScrollView;->invalidate()V

    .line 932
    .end local v2           #maxX:I
    .end local v3           #right:I
    .end local v4           #scrollX:I
    .end local v5           #width:I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/TYCTLHorizontalScrollView;->mLastScroll:J

    goto :goto_0

    .line 927
    :cond_1
    iget-object v6, p0, Landroid/widget/TYCTLHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 928
    iget-object v6, p0, Landroid/widget/TYCTLHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 930
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/TYCTLHorizontalScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 942
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TYCTLHorizontalScrollView;->smoothScrollBy(II)V

    .line 943
    return-void
.end method
