.class public final Lcom/shabakaty/downloader/xr0$c;
.super Ljava/lang/Object;
.source "DeserializedClassDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xr0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/oi3;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/rr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rr2<",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/q20;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lcom/shabakaty/downloader/xr0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xr0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xr0$c;->d:Lcom/shabakaty/downloader/xr0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ji3;->H:Ljava/util/List;

    const-string v1, "classProto.enumEntryList"

    .line 4
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 5
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lcom/shabakaty/downloader/kf5;->i(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    const/16 v1, 0x10

    .line 6
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8
    move-object v3, v1

    check-cast v3, Lcom/shabakaty/downloader/oi3;

    .line 9
    iget-object v4, p1, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 10
    iget-object v4, v4, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 11
    iget v3, v3, Lcom/shabakaty/downloader/oi3;->u:I

    .line 12
    invoke-static {v4, v3}, Lcom/shabakaty/downloader/rm3;->i(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/shabakaty/downloader/xr0$c;->a:Ljava/util/Map;

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/xr0$c;->d:Lcom/shabakaty/downloader/xr0;

    .line 14
    iget-object v0, p1, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 15
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 16
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 17
    new-instance v1, Lcom/shabakaty/downloader/xr0$c$a;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/xr0$c$a;-><init>(Lcom/shabakaty/downloader/xr0$c;Lcom/shabakaty/downloader/xr0;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/md4;->g(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/rr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/xr0$c;->b:Lcom/shabakaty/downloader/rr2;

    .line 18
    iget-object p1, p0, Lcom/shabakaty/downloader/xr0$c;->d:Lcom/shabakaty/downloader/xr0;

    .line 19
    iget-object p1, p1, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 20
    iget-object p1, p1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 21
    iget-object p1, p1, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 22
    new-instance v0, Lcom/shabakaty/downloader/xr0$c$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/xr0$c$b;-><init>(Lcom/shabakaty/downloader/xr0$c;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/xr0$c;->c:Lcom/shabakaty/downloader/d03;

    return-void
.end method
