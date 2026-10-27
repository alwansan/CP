.class public final Lcom/shabakaty/cinemana/features/MkvRepairAgeComparator;
.super Ljava/lang/Object;
.implements Ljava/util/Comparator;

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    instance-of v0, p1, Ljava/io/File;
    if-eqz v0, :age_equal
    instance-of v0, p2, Ljava/io/File;
    if-eqz v0, :age_equal
    check-cast p1, Ljava/io/File;
    check-cast p2, Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J
    move-result-wide v1
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J
    move-result-wide v3
    cmp-long v5, v1, v3
    return v5

    :age_equal
    const/4 v0, 0x0
    return v0
.end method
