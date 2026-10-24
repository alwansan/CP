.class public final Lcom/shabakaty/downloader/xx2;
.super Ljava/lang/Object;
.source "NavigationUI.java"


# direct methods
.method public static a(Landroidx/navigation/c;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/c;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    iget v0, p0, Landroidx/navigation/c;->t:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_1
    iget-object p0, p0, Landroidx/navigation/c;->s:Landroidx/navigation/d;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0
.end method
