.class public final Lcom/shabakaty/downloader/hi3;
.super Ljava/lang/Object;
.source "ProtoBasedClassDataFinder.kt"

# interfaces
.implements Lcom/shabakaty/downloader/o20;


# instance fields
.field public final a:Lcom/shabakaty/downloader/jw2;

.field public final b:Lcom/shabakaty/downloader/gm;

.field public final c:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/v20;",
            "Lcom/shabakaty/downloader/s94;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/v20;",
            "Lcom/shabakaty/downloader/ji3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ui3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/tm1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ui3;",
            "Lcom/shabakaty/downloader/jw2;",
            "Lcom/shabakaty/downloader/gm;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/v20;",
            "+",
            "Lcom/shabakaty/downloader/s94;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/hi3;->a:Lcom/shabakaty/downloader/jw2;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/hi3;->b:Lcom/shabakaty/downloader/gm;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/hi3;->c:Lcom/shabakaty/downloader/tm1;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/ui3;->x:Ljava/util/List;

    const-string p2, "proto.class_List"

    .line 6
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0xa

    .line 7
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-static {p2}, Lcom/shabakaty/downloader/kf5;->i(I)I

    move-result p2

    const/16 p3, 0x10

    if-ge p2, p3, :cond_0

    const/16 p2, 0x10

    .line 8
    :cond_0
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 10
    move-object p4, p2

    check-cast p4, Lcom/shabakaty/downloader/ji3;

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/hi3;->a:Lcom/shabakaty/downloader/jw2;

    .line 12
    iget p4, p4, Lcom/shabakaty/downloader/ji3;->v:I

    .line 13
    invoke-static {v0, p4}, Lcom/shabakaty/downloader/rm3;->h(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/v20;

    move-result-object p4

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_1
    iput-object p3, p0, Lcom/shabakaty/downloader/hi3;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/n20;
    .locals 5

    const-string v0, "classId"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hi3;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ji3;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/n20;

    iget-object v2, p0, Lcom/shabakaty/downloader/hi3;->a:Lcom/shabakaty/downloader/jw2;

    iget-object v3, p0, Lcom/shabakaty/downloader/hi3;->b:Lcom/shabakaty/downloader/gm;

    iget-object v4, p0, Lcom/shabakaty/downloader/hi3;->c:Lcom/shabakaty/downloader/tm1;

    invoke-interface {v4, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/s94;

    invoke-direct {v1, v2, v0, v3, p1}, Lcom/shabakaty/downloader/n20;-><init>(Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/ji3;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/s94;)V

    return-object v1
.end method
