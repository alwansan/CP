.class public abstract Lcom/shabakaty/downloader/fr3;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/shabakaty/downloader/uj;

    new-instance v1, Ljava/util/EnumMap;

    .line 1
    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v1, Ljava/util/EnumMap;

    .line 2
    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/fr3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/fr3;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-static {p1, p1}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-static {p1, p1}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/oe7;

    const-string v1, "RemoteModel"

    .line 2
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/oe7;-><init>(Ljava/lang/String;)V

    const-string v1, "modelName"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/oe7;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/oe7;

    const-string v1, "baseModel"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/oe7;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/oe7;

    const-string v1, "modelType"

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/oe7;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/oe7;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/oe7;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
