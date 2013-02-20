.class public Lcom/nvidia/NvCamera$NvVideoPreviewFps;
.super Ljava/lang/Object;
.source "NvCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/NvCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvVideoPreviewFps"
.end annotation


# instance fields
.field public MaxFps:I

.field public MaxPreviewHeight:I

.field public MaxPreviewWidth:I

.field public VideoHeight:I

.field public VideoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput v0, p0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->VideoWidth:I

    .line 189
    iput v0, p0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->VideoHeight:I

    .line 190
    iput v0, p0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxPreviewWidth:I

    .line 191
    iput v0, p0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxPreviewHeight:I

    .line 192
    iput v0, p0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxFps:I

    .line 193
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 197
    instance-of v2, p1, Lcom/nvidia/NvCamera$NvVideoPreviewFps;

    if-nez v2, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 200
    check-cast v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;

    .line 201
    .local v0, vpf:Lcom/nvidia/NvCamera$NvVideoPreviewFps;
    iget v2, p0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->VideoWidth:I

    iget v3, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->VideoWidth:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->VideoHeight:I

    iget v3, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->VideoHeight:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxPreviewWidth:I

    iget v3, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxPreviewWidth:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxPreviewHeight:I

    iget v3, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxPreviewHeight:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxFps:I

    iget v3, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxFps:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
