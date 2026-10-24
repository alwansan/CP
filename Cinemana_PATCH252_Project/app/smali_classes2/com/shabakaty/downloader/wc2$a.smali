.class public final Lcom/shabakaty/downloader/wc2$a;
.super Lcom/shabakaty/downloader/kd2$c;
.source "KProperty0Impl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/wc2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/kd2$c<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final v:Lcom/shabakaty/downloader/wc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/wc2<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wc2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/wc2<",
            "TR;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/kd2$c;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wc2$a;->v:Lcom/shabakaty/downloader/wc2;

    return-void
.end method


# virtual methods
.method public i()Lcom/shabakaty/downloader/kd2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wc2$a;->v:Lcom/shabakaty/downloader/wc2;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wc2$a;->v:Lcom/shabakaty/downloader/wc2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/wc2;->B:Lcom/shabakaty/downloader/cq3$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_setter()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/wc2$a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ac2;->a([Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
