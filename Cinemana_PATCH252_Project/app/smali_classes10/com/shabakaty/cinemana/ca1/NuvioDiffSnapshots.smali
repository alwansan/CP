.class public final Lcom/shabakaty/cinemana/ca1/NuvioDiffSnapshots;
.super Ljava/lang/Object;
.source "NuvioDiffSnapshots.java"

# Identity-only fast path: equals() can trigger expensive model transformations;
# same objects in same positions would not cause content notifications anyway.
# This is safe even if an earlier async generation is still running, because
# callers bump the generation to invalidate the stale submission.
.method public static sameReferences(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    if-eqz p0, :different
    if-eqz p1, :different
    if-eq p0, p1, :identical
    invoke-interface {p0}, Ljava/util/List;->size()I
    move-result v0
    invoke-interface {p1}, Ljava/util/List;->size()I
    move-result v1
    if-ne v0, v1, :different
    const/4 v2, 0x0
    :loop
    if-ge v2, v0, :identical
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v4
    if-ne v3, v4, :different
    add-int/lit8 v2, v2, 0x1
    goto :loop
    :identical
    const/4 v0, 0x1
    return v0
    :different
    const/4 v0, 0x0
    return v0
.end method
