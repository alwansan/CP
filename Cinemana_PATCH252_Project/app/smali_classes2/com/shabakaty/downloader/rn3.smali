.class public final Lcom/shabakaty/downloader/rn3;
.super Lcom/shabakaty/downloader/af2;
.source "RealConnection.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/List<",
        "+",
        "Ljava/security/cert/Certificate;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ey;

.field public final synthetic s:Lcom/shabakaty/downloader/is1;

.field public final synthetic t:Lcom/shabakaty/downloader/p4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ey;Lcom/shabakaty/downloader/is1;Lcom/shabakaty/downloader/p4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/rn3;->r:Lcom/shabakaty/downloader/ey;

    iput-object p2, p0, Lcom/shabakaty/downloader/rn3;->s:Lcom/shabakaty/downloader/is1;

    iput-object p3, p0, Lcom/shabakaty/downloader/rn3;->t:Lcom/shabakaty/downloader/p4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rn3;->r:Lcom/shabakaty/downloader/ey;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ey;->b:Lcom/shabakaty/downloader/dy;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/rn3;->s:Lcom/shabakaty/downloader/is1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/is1;->c()Ljava/util/List;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/rn3;->t:Lcom/shabakaty/downloader/p4;

    .line 5
    iget-object v2, v2, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 6
    iget-object v2, v2, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/dy;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
