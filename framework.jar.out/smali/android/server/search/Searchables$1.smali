.class final Landroid/server/search/Searchables$1;
.super Ljava/lang/Object;
.source "Searchables.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/search/Searchables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 316
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 6
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 319
    if-ne p1, p2, :cond_1

    .line 320
    const/4 v2, 0x0

    .line 342
    :cond_0
    :goto_0
    return v2

    .line 324
    :cond_1
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const-string v5, "com.baidu.searchbox.SearchActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 326
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const-string v5, "come.baidu.searchbox.SearchActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 327
    goto :goto_0

    .line 330
    :cond_2
    #calls: Landroid/server/search/Searchables;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    invoke-static {p1}, Landroid/server/search/Searchables;->access$000(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    .line 331
    .local v0, lhsSystem:Z
    #calls: Landroid/server/search/Searchables;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    invoke-static {p2}, Landroid/server/search/Searchables;->access$000(Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    .line 332
    .local v1, rhsSystem:Z
    if-eqz v0, :cond_3

    if-eqz v1, :cond_0

    .line 334
    :cond_3
    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    move v2, v3

    .line 335
    goto :goto_0

    .line 342
    :cond_4
    iget v2, p2, Landroid/content/pm/ResolveInfo;->priority:I

    iget v3, p1, Landroid/content/pm/ResolveInfo;->priority:I

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 316
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/server/search/Searchables$1;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
