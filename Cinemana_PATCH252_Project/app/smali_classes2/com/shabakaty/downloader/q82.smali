.class public final Lcom/shabakaty/downloader/q82;
.super Lcom/shabakaty/downloader/af2;
.source "JavaTypeResolver.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qe2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/r82;

.field public final synthetic s:Lcom/shabakaty/downloader/kt4;

.field public final synthetic t:Lcom/shabakaty/downloader/y62;

.field public final synthetic u:Lcom/shabakaty/downloader/i82;

.field public final synthetic v:Lcom/shabakaty/downloader/ts4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/r82;Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/y62;Lcom/shabakaty/downloader/i82;Lcom/shabakaty/downloader/ts4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/q82;->r:Lcom/shabakaty/downloader/r82;

    iput-object p2, p0, Lcom/shabakaty/downloader/q82;->s:Lcom/shabakaty/downloader/kt4;

    iput-object p3, p0, Lcom/shabakaty/downloader/q82;->t:Lcom/shabakaty/downloader/y62;

    iput-object p4, p0, Lcom/shabakaty/downloader/q82;->u:Lcom/shabakaty/downloader/i82;

    iput-object p5, p0, Lcom/shabakaty/downloader/q82;->v:Lcom/shabakaty/downloader/ts4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q82;->r:Lcom/shabakaty/downloader/r82;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/r82;->c:Lcom/shabakaty/downloader/ot4;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/q82;->s:Lcom/shabakaty/downloader/kt4;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/q82;->t:Lcom/shabakaty/downloader/y62;

    invoke-interface {v2}, Lcom/shabakaty/downloader/y62;->A()Z

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/q82;->u:Lcom/shabakaty/downloader/i82;

    iget-object v4, p0, Lcom/shabakaty/downloader/q82;->v:Lcom/shabakaty/downloader/ts4;

    invoke-interface {v4}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Lcom/shabakaty/downloader/g30;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v4

    :goto_0
    move-object v8, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0xf

    .line 6
    invoke-static/range {v3 .. v9}, Lcom/shabakaty/downloader/i82;->a(Lcom/shabakaty/downloader/i82;Lcom/shabakaty/downloader/du4;Lcom/shabakaty/downloader/l82;ZLjava/util/Set;Lcom/shabakaty/downloader/b74;I)Lcom/shabakaty/downloader/i82;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ot4;->b(Lcom/shabakaty/downloader/kt4;ZLcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    const-string v1, "typeParameterUpperBoundE\u2026efaultType)\n            )"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
