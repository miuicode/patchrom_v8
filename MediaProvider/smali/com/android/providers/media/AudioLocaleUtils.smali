.class public Lcom/android/providers/media/AudioLocaleUtils;
.super Ljava/lang/Object;
.source "AudioLocaleUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "displayName"

    .prologue
    const/16 v6, 0x20

    .line 31
    invoke-static {}, Lcom/android/providers/media/HanziToPinyin;->getInstance()Lcom/android/providers/media/HanziToPinyin;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/providers/media/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 32
    .local v3, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/HanziToPinyin$Token;>;"
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/media/HanziToPinyin$Token;

    .line 37
    .local v2, token:Lcom/android/providers/media/HanziToPinyin$Token;
    const/4 v4, 0x2

    iget v5, v2, Lcom/android/providers/media/HanziToPinyin$Token;->type:I

    if-ne v4, v5, :cond_1

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 39
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    :cond_0
    iget-object v4, v2, Lcom/android/providers/media/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    iget-object v4, v2, Lcom/android/providers/media/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 46
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    :cond_2
    iget-object v4, v2, Lcom/android/providers/media/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 51
    .end local v2           #token:Lcom/android/providers/media/HanziToPinyin$Token;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 57
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .end local p0
    :cond_4
    :goto_1
    return-object p0

    .line 52
    .restart local p0
    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 53
    const-string p0, "#"

    goto :goto_1
.end method
