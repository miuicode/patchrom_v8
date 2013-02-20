.class public Lcom/nvidia/NvCamera$NvWindow;
.super Ljava/lang/Object;
.source "NvCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/NvCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvWindow"
.end annotation


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I

.field public weight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput v0, p0, Lcom/nvidia/NvCamera$NvWindow;->left:I

    .line 164
    iput v0, p0, Lcom/nvidia/NvCamera$NvWindow;->top:I

    .line 165
    iput v0, p0, Lcom/nvidia/NvCamera$NvWindow;->right:I

    .line 166
    iput v0, p0, Lcom/nvidia/NvCamera$NvWindow;->bottom:I

    .line 167
    iput v0, p0, Lcom/nvidia/NvCamera$NvWindow;->weight:I

    .line 168
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .parameter "w"

    .prologue
    .line 170
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput p1, p0, Lcom/nvidia/NvCamera$NvWindow;->left:I

    .line 172
    iput p2, p0, Lcom/nvidia/NvCamera$NvWindow;->top:I

    .line 173
    iput p3, p0, Lcom/nvidia/NvCamera$NvWindow;->right:I

    .line 174
    iput p4, p0, Lcom/nvidia/NvCamera$NvWindow;->bottom:I

    .line 175
    iput p5, p0, Lcom/nvidia/NvCamera$NvWindow;->weight:I

    .line 176
    return-void
.end method
