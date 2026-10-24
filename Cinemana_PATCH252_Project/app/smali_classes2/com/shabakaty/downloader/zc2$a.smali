.class public final Lcom/shabakaty/downloader/zc2$a;
.super Lcom/shabakaty/downloader/kd2$c;
.source "KProperty2Impl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/jn1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zc2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/kd2$c<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final v:Lcom/shabakaty/downloader/zc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/zc2<",
            "TD;TE;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zc2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/zc2<",
            "TD;TE;TV;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/kd2$c;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zc2$a;->v:Lcom/shabakaty/downloader/zc2;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zc2$a;->v:Lcom/shabakaty/downloader/zc2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/zc2;->B:Lcom/shabakaty/downloader/cq3$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_setter()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/zc2$a;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ac2;->a([Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public i()Lcom/shabakaty/downloader/kd2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zc2$a;->v:Lcom/shabakaty/downloader/zc2;

    return-object v0
.end method
