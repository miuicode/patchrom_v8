.class public Landroid/widget/LetterScroller;
.super Ljava/lang/Object;
.source "LetterScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LetterScroller$FlingAction;,
        Landroid/widget/LetterScroller$FlashingArrow;,
        Landroid/widget/LetterScroller$Overlay;,
        Landroid/widget/LetterScroller$Panel;,
        Landroid/widget/LetterScroller$ScrollFade;
    }
.end annotation


# static fields
.field static final LETTER_COUNT:I = 0x1b

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_FADE:I = 0x3

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1


# instance fields
.field private mDownPress:Ljava/lang/Runnable;

.field private mDownX:I

.field private mDownY:I

.field private mFlashingArrow:Landroid/widget/LetterScroller$FlashingArrow;

.field private mFling:Landroid/widget/LetterScroller$FlingAction;

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mLetterH:I

.field private final mLetters:Ljava/lang/String;

.field private mList:Landroid/widget/AbsListView;

.field private mListAdapter:Landroid/widget/BaseAdapter;

.field private mListOffset:I

.field private mNoDataLetters:Ljava/lang/String;

.field private mNoDataLettersPos:[F

.field private mNowX:I

.field private mNowY:I

.field private mOverlay:Landroid/widget/LetterScroller$Overlay;

.field private mPanel:Landroid/widget/LetterScroller$Panel;

.field private mScrollFade:Landroid/widget/LetterScroller$ScrollFade;

.field private mSectionIndex:I

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSectionLetters:Ljava/lang/String;

.field private mSectionLettersPos:[F

.field private mSectionOffset:I

.field private mSections:[Ljava/lang/Object;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 3
    .parameter "context"
    .parameter "listView"

    .prologue
    const/16 v2, 0x36

    const/4 v1, 0x0

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    iput-object v0, p0, Landroid/widget/LetterScroller;->mLetters:Ljava/lang/String;

    .line 55
    new-array v0, v2, [F

    iput-object v0, p0, Landroid/widget/LetterScroller;->mNoDataLettersPos:[F

    .line 57
    new-array v0, v2, [F

    iput-object v0, p0, Landroid/widget/LetterScroller;->mSectionLettersPos:[F

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/LetterScroller;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Landroid/widget/LetterScroller$1;

    invoke-direct {v0, p0}, Landroid/widget/LetterScroller$1;-><init>(Landroid/widget/LetterScroller;)V

    iput-object v0, p0, Landroid/widget/LetterScroller;->mDownPress:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Landroid/widget/LetterScroller$ScrollFade;

    invoke-direct {v0, p0}, Landroid/widget/LetterScroller$ScrollFade;-><init>(Landroid/widget/LetterScroller;)V

    iput-object v0, p0, Landroid/widget/LetterScroller;->mScrollFade:Landroid/widget/LetterScroller$ScrollFade;

    .line 75
    new-instance v0, Landroid/widget/LetterScroller$Panel;

    invoke-direct {v0, p0, v1}, Landroid/widget/LetterScroller$Panel;-><init>(Landroid/widget/LetterScroller;Landroid/widget/LetterScroller$1;)V

    iput-object v0, p0, Landroid/widget/LetterScroller;->mPanel:Landroid/widget/LetterScroller$Panel;

    .line 76
    new-instance v0, Landroid/widget/LetterScroller$Overlay;

    invoke-direct {v0, p0, v1}, Landroid/widget/LetterScroller$Overlay;-><init>(Landroid/widget/LetterScroller;Landroid/widget/LetterScroller$1;)V

    iput-object v0, p0, Landroid/widget/LetterScroller;->mOverlay:Landroid/widget/LetterScroller$Overlay;

    .line 77
    new-instance v0, Landroid/widget/LetterScroller$FlashingArrow;

    invoke-direct {v0, p0, v1}, Landroid/widget/LetterScroller$FlashingArrow;-><init>(Landroid/widget/LetterScroller;Landroid/widget/LetterScroller$1;)V

    iput-object v0, p0, Landroid/widget/LetterScroller;->mFlashingArrow:Landroid/widget/LetterScroller$FlashingArrow;

    .line 78
    iput-object v1, p0, Landroid/widget/LetterScroller;->mFling:Landroid/widget/LetterScroller$FlingAction;

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LetterScroller;->mIndex:I

    .line 81
    iput-object p2, p0, Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/LetterScroller;->init(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Landroid/widget/LetterScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Landroid/widget/LetterScroller;->mState:I

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/LetterScroller;)Landroid/widget/LetterScroller$Panel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/widget/LetterScroller;->mPanel:Landroid/widget/LetterScroller$Panel;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/LetterScroller;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Landroid/widget/LetterScroller;->mDownX:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/LetterScroller;)Landroid/widget/AbsListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/LetterScroller;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/widget/LetterScroller;->mSectionLetters:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/widget/LetterScroller;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Landroid/widget/LetterScroller;->mSectionLetters:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/widget/LetterScroller;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/widget/LetterScroller;->mSectionLettersPos:[F

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/LetterScroller;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/widget/LetterScroller;->mNoDataLetters:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/widget/LetterScroller;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Landroid/widget/LetterScroller;->mNoDataLetters:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/widget/LetterScroller;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/widget/LetterScroller;->mNoDataLettersPos:[F

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/LetterScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Landroid/widget/LetterScroller;->mLetterH:I

    return v0
.end method

.method static synthetic access$1602(Landroid/widget/LetterScroller;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Landroid/widget/LetterScroller;->mLetterH:I

    return p1
.end method

.method static synthetic access$1700(Landroid/widget/LetterScroller;)Landroid/widget/LetterScroller$FlingAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/widget/LetterScroller;->mFling:Landroid/widget/LetterScroller$FlingAction;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/LetterScroller;)Landroid/widget/LetterScroller$Overlay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/widget/LetterScroller;->mOverlay:Landroid/widget/LetterScroller$Overlay;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/LetterScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Landroid/widget/LetterScroller;->mNowX:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/LetterScroller;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Landroid/widget/LetterScroller;->mDownY:I

    return p1
.end method

.method static synthetic access$400(Landroid/widget/LetterScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Landroid/widget/LetterScroller;->mNowY:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/LetterScroller;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/widget/LetterScroller;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/LetterScroller;)Landroid/widget/LetterScroller$ScrollFade;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/widget/LetterScroller;->mScrollFade:Landroid/widget/LetterScroller$ScrollFade;

    return-object v0
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 249
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 250
    .local v8, cancelFling:Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 251
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 252
    return-void
.end method

.method private getSectionsFromIndexer()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 143
    iget-object v6, p0, Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 144
    .local v0, adapter:Landroid/widget/Adapter;
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/LetterScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 145
    instance-of v6, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v6, :cond_0

    move-object v6, v0

    .line 146
    check-cast v6, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v6}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v6

    iput v6, p0, Landroid/widget/LetterScroller;->mListOffset:I

    .line 147
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 150
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_0
    instance-of v6, v0, Landroid/widget/ExpandableListConnector;

    if-eqz v6, :cond_4

    move-object v6, v0

    .line 151
    check-cast v6, Landroid/widget/ExpandableListConnector;

    invoke-virtual {v6}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 152
    .local v1, expAdapter:Landroid/widget/ExpandableListAdapter;
    instance-of v6, v1, Landroid/widget/SectionIndexer;

    if-eqz v6, :cond_1

    .line 153
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1           #expAdapter:Landroid/widget/ExpandableListAdapter;
    iput-object v1, p0, Landroid/widget/LetterScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 154
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/LetterScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 155
    iget-object v6, p0, Landroid/widget/LetterScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/LetterScroller;->mSections:[Ljava/lang/Object;

    .line 172
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x1b

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 173
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 174
    .local v2, flag:Z
    iput v8, p0, Landroid/widget/LetterScroller;->mSectionOffset:I

    .line 175
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v6, p0, Landroid/widget/LetterScroller;->mSections:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v3, v6, :cond_6

    .line 176
    iget-object v6, p0, Landroid/widget/LetterScroller;->mSections:[Ljava/lang/Object;

    aget-object v5, v6, v3

    check-cast v5, Ljava/lang/String;

    .line 177
    .local v5, text:Ljava/lang/String;
    const-string v6, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 178
    iget-object v6, p0, Landroid/widget/LetterScroller;->mSections:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    const/4 v2, 0x1

    .line 181
    :cond_2
    if-nez v2, :cond_3

    .line 182
    iget v6, p0, Landroid/widget/LetterScroller;->mSectionOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/widget/LetterScroller;->mSectionOffset:I

    .line 175
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 159
    .end local v2           #flag:Z
    .end local v3           #i:I
    .end local v4           #sb:Ljava/lang/StringBuilder;
    .end local v5           #text:Ljava/lang/String;
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_4
    instance-of v6, v0, Landroid/widget/SectionIndexer;

    if-eqz v6, :cond_5

    move-object v6, v0

    .line 160
    check-cast v6, Landroid/widget/BaseAdapter;

    iput-object v6, p0, Landroid/widget/LetterScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 161
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/LetterScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 162
    iget-object v6, p0, Landroid/widget/LetterScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/LetterScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 165
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_5
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/LetterScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 166
    new-array v6, v9, [Ljava/lang/String;

    const-string v7, " "

    aput-object v7, v6, v8

    iput-object v6, p0, Landroid/widget/LetterScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 187
    .restart local v2       #flag:Z
    .restart local v3       #i:I
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/LetterScroller;->mSectionLetters:Ljava/lang/String;

    .line 188
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LetterScroller;->mState:I

    .line 92
    invoke-direct {p0}, Landroid/widget/LetterScroller;->getSectionsFromIndexer()V

    .line 93
    iget-object v0, p0, Landroid/widget/LetterScroller;->mPanel:Landroid/widget/LetterScroller$Panel;

    invoke-virtual {v0, p1}, Landroid/widget/LetterScroller$Panel;->init(Landroid/content/Context;)V

    .line 94
    iget-object v0, p0, Landroid/widget/LetterScroller;->mOverlay:Landroid/widget/LetterScroller$Overlay;

    invoke-virtual {v0, p1}, Landroid/widget/LetterScroller$Overlay;->init(Landroid/content/Context;)V

    .line 95
    iget-object v0, p0, Landroid/widget/LetterScroller;->mFlashingArrow:Landroid/widget/LetterScroller$FlashingArrow;

    invoke-virtual {v0, p1}, Landroid/widget/LetterScroller$FlashingArrow;->init(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method private scrollTo(I)V
    .locals 10
    .parameter "y"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 192
    iget-object v6, p0, Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    .line 194
    .local v0, count:I
    iget v6, p0, Landroid/widget/LetterScroller;->mLetterH:I

    div-int v6, p1, v6

    add-int/lit8 v4, v6, -0x1

    .line 195
    .local v4, sectionUnknown:I
    const/16 v6, 0x1a

    if-le v4, v6, :cond_1

    .line 196
    const/16 v4, 0x1a

    .line 200
    :cond_0
    :goto_0
    iget-object v6, p0, Landroid/widget/LetterScroller;->mSectionLetters:Ljava/lang/String;

    const-string v7, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 203
    .local v3, section:I
    if-ne v3, v8, :cond_3

    iget-object v6, p0, Landroid/widget/LetterScroller;->mSectionLetters:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 205
    const-string v6, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    iget-object v7, p0, Landroid/widget/LetterScroller;->mSectionLetters:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 207
    :goto_1
    iget-object v6, p0, Landroid/widget/LetterScroller;->mSectionLetters:Ljava/lang/String;

    const-string v7, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    add-int/lit8 v5, v4, 0x1

    .end local v4           #sectionUnknown:I
    .local v5, sectionUnknown:I
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v8, :cond_2

    move v4, v5

    .end local v5           #sectionUnknown:I
    .restart local v4       #sectionUnknown:I
    goto :goto_1

    .line 197
    .end local v3           #section:I
    :cond_1
    if-gez v4, :cond_0

    .line 198
    const/4 v4, 0x0

    goto :goto_0

    .line 208
    .end local v4           #sectionUnknown:I
    .restart local v3       #section:I
    .restart local v5       #sectionUnknown:I
    :cond_2
    add-int/lit8 v4, v5, -0x1

    .line 217
    .end local v5           #sectionUnknown:I
    .restart local v4       #sectionUnknown:I
    :cond_3
    :goto_2
    iget-object v6, p0, Landroid/widget/LetterScroller;->mOverlay:Landroid/widget/LetterScroller$Overlay;

    const-string v7, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LetterScroller$Overlay;->setLetter(Ljava/lang/String;)V

    .line 219
    iget v6, p0, Landroid/widget/LetterScroller;->mSectionOffset:I

    add-int/2addr v6, v3

    iput v6, p0, Landroid/widget/LetterScroller;->mSectionIndex:I

    .line 221
    iget-object v6, p0, Landroid/widget/LetterScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget v7, p0, Landroid/widget/LetterScroller;->mSectionIndex:I

    invoke-interface {v6, v7}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v2

    .line 223
    .local v2, index:I
    add-int/lit8 v6, v0, -0x1

    if-le v2, v6, :cond_4

    add-int/lit8 v2, v0, -0x1

    .line 224
    :cond_4
    if-gez v2, :cond_5

    const/4 v2, 0x0

    .line 235
    :cond_5
    iget-object v6, p0, Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;

    instance-of v6, v6, Landroid/widget/ExpandableListView;

    if-eqz v6, :cond_8

    .line 236
    iget-object v1, p0, Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ExpandableListView;

    .line 237
    .local v1, expList:Landroid/widget/ExpandableListView;
    iget v6, p0, Landroid/widget/LetterScroller;->mListOffset:I

    add-int/2addr v6, v2

    invoke-static {v6}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v6

    invoke-virtual {v1, v6, v9}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 245
    .end local v1           #expList:Landroid/widget/ExpandableListView;
    :goto_3
    return-void

    .line 212
    .end local v2           #index:I
    :cond_6
    :goto_4
    iget-object v6, p0, Landroid/widget/LetterScroller;->mSectionLetters:Ljava/lang/String;

    const-string v7, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    add-int/lit8 v5, v4, -0x1

    .end local v4           #sectionUnknown:I
    .restart local v5       #sectionUnknown:I
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v8, :cond_7

    move v4, v5

    .end local v5           #sectionUnknown:I
    .restart local v4       #sectionUnknown:I
    goto :goto_4

    .line 213
    .end local v4           #sectionUnknown:I
    .restart local v5       #sectionUnknown:I
    :cond_7
    add-int/lit8 v4, v5, 0x1

    .end local v5           #sectionUnknown:I
    .restart local v4       #sectionUnknown:I
    goto :goto_2

    .line 239
    .restart local v2       #index:I
    :cond_8
    iget-object v6, p0, Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;

    instance-of v6, v6, Landroid/widget/ListView;

    if-eqz v6, :cond_9

    .line 240
    iget-object v6, p0, Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;

    check-cast v6, Landroid/widget/ListView;

    iget v7, p0, Landroid/widget/LetterScroller;->mListOffset:I

    add-int/2addr v7, v2

    invoke-virtual {v6, v7, v9}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_3

    .line 243
    :cond_9
    iget-object v6, p0, Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;

    iget v7, p0, Landroid/widget/LetterScroller;->mListOffset:I

    add-int/2addr v7, v2

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/widget/LetterScroller;->mOverlay:Landroid/widget/LetterScroller$Overlay;

    invoke-virtual {v0, p1}, Landroid/widget/LetterScroller$Overlay;->draw(Landroid/graphics/Canvas;)V

    .line 111
    iget-object v0, p0, Landroid/widget/LetterScroller;->mFlashingArrow:Landroid/widget/LetterScroller$FlashingArrow;

    invoke-virtual {v0, p1}, Landroid/widget/LetterScroller$FlashingArrow;->draw(Landroid/graphics/Canvas;)V

    .line 112
    iget-object v0, p0, Landroid/widget/LetterScroller;->mPanel:Landroid/widget/LetterScroller$Panel;

    invoke-virtual {v0, p1}, Landroid/widget/LetterScroller$Panel;->draw(Landroid/graphics/Canvas;)V

    .line 113
    return-void
.end method

.method getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/widget/LetterScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/widget/LetterScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Landroid/widget/LetterScroller;->getSectionsFromIndexer()V

    .line 127
    :cond_0
    iget-object v0, p0, Landroid/widget/LetterScroller;->mSections:[Ljava/lang/Object;

    return-object v0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v0, 0x1

    .line 257
    iget-object v1, p0, Landroid/widget/LetterScroller;->mPanel:Landroid/widget/LetterScroller$Panel;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LetterScroller$Panel;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 258
    invoke-virtual {p0, v0}, Landroid/widget/LetterScroller;->setState(I)V

    .line 261
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 116
    iget-object v0, p0, Landroid/widget/LetterScroller;->mPanel:Landroid/widget/LetterScroller$Panel;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LetterScroller$Panel;->loadLetterPos(II)V

    .line 117
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "me"

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 267
    iget v5, p0, Landroid/widget/LetterScroller;->mState:I

    if-nez v5, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v3

    .line 271
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 272
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 273
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 275
    .local v2, y:I
    if-nez v0, :cond_4

    .line 276
    iget-object v5, p0, Landroid/widget/LetterScroller;->mPanel:Landroid/widget/LetterScroller$Panel;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/widget/LetterScroller$Panel;->isPointInside(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 277
    iget-object v3, p0, Landroid/widget/LetterScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v3, :cond_2

    .line 278
    invoke-direct {p0}, Landroid/widget/LetterScroller;->getSectionsFromIndexer()V

    .line 280
    :cond_2
    iget-object v3, p0, Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v3, :cond_3

    .line 281
    iget-object v3, p0, Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 282
    iget-object v3, p0, Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 285
    :cond_3
    invoke-direct {p0}, Landroid/widget/LetterScroller;->cancelFling()V

    .line 286
    iput v1, p0, Landroid/widget/LetterScroller;->mDownX:I

    iput v1, p0, Landroid/widget/LetterScroller;->mNowX:I

    .line 287
    iput v2, p0, Landroid/widget/LetterScroller;->mDownY:I

    iput v2, p0, Landroid/widget/LetterScroller;->mNowY:I

    .line 288
    invoke-direct {p0, v2}, Landroid/widget/LetterScroller;->scrollTo(I)V

    .line 289
    iget-object v3, p0, Landroid/widget/LetterScroller;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/widget/LetterScroller;->mDownPress:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 290
    iget-object v3, p0, Landroid/widget/LetterScroller;->mFlashingArrow:Landroid/widget/LetterScroller$FlashingArrow;

    invoke-virtual {v3}, Landroid/widget/LetterScroller$FlashingArrow;->start()V

    .line 291
    invoke-virtual {p0, v8}, Landroid/widget/LetterScroller;->setState(I)V

    move v3, v4

    .line 292
    goto :goto_0

    .line 294
    :cond_4
    if-ne v0, v4, :cond_6

    .line 295
    iget v5, p0, Landroid/widget/LetterScroller;->mState:I

    if-ne v5, v8, :cond_0

    .line 296
    iget-object v5, p0, Landroid/widget/LetterScroller;->mFling:Landroid/widget/LetterScroller$FlingAction;

    if-eqz v5, :cond_5

    iget v5, p0, Landroid/widget/LetterScroller;->mDownX:I

    sub-int/2addr v5, v1

    const/16 v6, 0x14

    if-le v5, v6, :cond_5

    iget v5, p0, Landroid/widget/LetterScroller;->mDownX:I

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Landroid/widget/LetterScroller;->mDownY:I

    sub-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_5

    .line 298
    iget v5, p0, Landroid/widget/LetterScroller;->mDownY:I

    invoke-direct {p0, v5}, Landroid/widget/LetterScroller;->scrollTo(I)V

    .line 299
    iget-object v5, p0, Landroid/widget/LetterScroller;->mFling:Landroid/widget/LetterScroller$FlingAction;

    iget v6, p0, Landroid/widget/LetterScroller;->mSectionIndex:I

    invoke-interface {v5, v6}, Landroid/widget/LetterScroller$FlingAction;->onFling(I)V

    .line 301
    :cond_5
    iget-object v5, p0, Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5, v3}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 302
    iget-object v5, p0, Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 303
    iget-object v3, p0, Landroid/widget/LetterScroller;->mScrollFade:Landroid/widget/LetterScroller$ScrollFade;

    invoke-virtual {v3}, Landroid/widget/LetterScroller$ScrollFade;->start()V

    .line 304
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/widget/LetterScroller;->setState(I)V

    .line 305
    iget-object v3, p0, Landroid/widget/LetterScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->invalidate()V

    move v3, v4

    .line 306
    goto/16 :goto_0

    .line 308
    :cond_6
    if-ne v0, v8, :cond_0

    .line 309
    iget v5, p0, Landroid/widget/LetterScroller;->mState:I

    if-ne v5, v8, :cond_0

    .line 310
    iget v3, p0, Landroid/widget/LetterScroller;->mNowY:I

    if-ne v2, v3, :cond_7

    move v3, v4

    .line 311
    goto/16 :goto_0

    .line 313
    :cond_7
    invoke-direct {p0, v2}, Landroid/widget/LetterScroller;->scrollTo(I)V

    .line 314
    iput v1, p0, Landroid/widget/LetterScroller;->mNowX:I

    .line 315
    iput v2, p0, Landroid/widget/LetterScroller;->mNowY:I

    move v3, v4

    .line 316
    goto/16 :goto_0
.end method

.method public resetSectionsFromIndexer(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/widget/LetterScroller;->getSectionsFromIndexer()V

    .line 132
    iget-object v0, p0, Landroid/widget/LetterScroller;->mPanel:Landroid/widget/LetterScroller$Panel;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LetterScroller$Panel;->loadLetterPos(II)V

    .line 133
    return-void
.end method

.method public setFlingAction(Landroid/widget/LetterScroller$FlingAction;)V
    .locals 0
    .parameter "fling"

    .prologue
    .line 607
    iput-object p1, p0, Landroid/widget/LetterScroller;->mFling:Landroid/widget/LetterScroller$FlingAction;

    .line 608
    return-void
.end method

.method public setListOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 137
    iput p1, p0, Landroid/widget/LetterScroller;->mSectionOffset:I

    .line 139
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 87
    iput p1, p0, Landroid/widget/LetterScroller;->mState:I

    .line 88
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LetterScroller;->setState(I)V

    .line 100
    return-void
.end method
