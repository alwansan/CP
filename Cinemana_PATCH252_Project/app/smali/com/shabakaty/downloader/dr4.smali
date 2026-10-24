.class public final Lcom/shabakaty/downloader/dr4;
.super Lcom/shabakaty/downloader/wr4;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/dr4$b;,
        Lcom/shabakaty/downloader/dr4$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/wr4<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/ia2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ia2<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/y92;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/y92<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/lr1;

.field public final d:Lcom/shabakaty/downloader/cu4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cu4<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Lcom/shabakaty/downloader/xr4;

.field public final f:Lcom/shabakaty/downloader/dr4$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/dr4<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field public g:Lcom/shabakaty/downloader/wr4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/wr4<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ia2;Lcom/shabakaty/downloader/y92;Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/cu4;Lcom/shabakaty/downloader/xr4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ia2<",
            "TT;>;",
            "Lcom/shabakaty/downloader/y92<",
            "TT;>;",
            "Lcom/shabakaty/downloader/lr1;",
            "Lcom/shabakaty/downloader/cu4<",
            "TT;>;",
            "Lcom/shabakaty/downloader/xr4;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/wr4;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/dr4$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/dr4$b;-><init>(Lcom/shabakaty/downloader/dr4;Lcom/shabakaty/downloader/dr4$a;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/dr4;->f:Lcom/shabakaty/downloader/dr4$b;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/dr4;->a:Lcom/shabakaty/downloader/ia2;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/dr4;->b:Lcom/shabakaty/downloader/y92;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/dr4;->c:Lcom/shabakaty/downloader/lr1;

    .line 6
    iput-object p4, p0, Lcom/shabakaty/downloader/dr4;->d:Lcom/shabakaty/downloader/cu4;

    .line 7
    iput-object p5, p0, Lcom/shabakaty/downloader/dr4;->e:Lcom/shabakaty/downloader/xr4;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ga2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ga2;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dr4;->b:Lcom/shabakaty/downloader/y92;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/dr4;->g:Lcom/shabakaty/downloader/wr4;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/dr4;->c:Lcom/shabakaty/downloader/lr1;

    iget-object v1, p0, Lcom/shabakaty/downloader/dr4;->e:Lcom/shabakaty/downloader/xr4;

    iget-object v2, p0, Lcom/shabakaty/downloader/dr4;->d:Lcom/shabakaty/downloader/cu4;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/lr1;->g(Lcom/shabakaty/downloader/xr4;Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/dr4;->g:Lcom/shabakaty/downloader/wr4;

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/wr4;->a(Lcom/shabakaty/downloader/ga2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/zd4;->a(Lcom/shabakaty/downloader/ga2;)Lcom/shabakaty/downloader/z92;

    move-result-object p1

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    instance-of v0, p1, Lcom/shabakaty/downloader/ba2;

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/dr4;->b:Lcom/shabakaty/downloader/y92;

    iget-object v1, p0, Lcom/shabakaty/downloader/dr4;->d:Lcom/shabakaty/downloader/cu4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/cu4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/dr4;->f:Lcom/shabakaty/downloader/dr4$b;

    invoke-interface {v0, p1, v1, v2}, Lcom/shabakaty/downloader/y92;->a(Lcom/shabakaty/downloader/z92;Ljava/lang/reflect/Type;Lcom/shabakaty/downloader/x92;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/pa2;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pa2;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dr4;->a:Lcom/shabakaty/downloader/ia2;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/dr4;->g:Lcom/shabakaty/downloader/wr4;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/dr4;->c:Lcom/shabakaty/downloader/lr1;

    iget-object v1, p0, Lcom/shabakaty/downloader/dr4;->e:Lcom/shabakaty/downloader/xr4;

    iget-object v2, p0, Lcom/shabakaty/downloader/dr4;->d:Lcom/shabakaty/downloader/cu4;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/lr1;->g(Lcom/shabakaty/downloader/xr4;Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/dr4;->g:Lcom/shabakaty/downloader/wr4;

    .line 4
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/wr4;->b(Lcom/shabakaty/downloader/pa2;Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pa2;->k()Lcom/shabakaty/downloader/pa2;

    return-void

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/dr4;->d:Lcom/shabakaty/downloader/cu4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/cu4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/dr4;->f:Lcom/shabakaty/downloader/dr4$b;

    invoke-interface {v0, p2, v1, v2}, Lcom/shabakaty/downloader/ia2;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/shabakaty/downloader/ha2;)Lcom/shabakaty/downloader/z92;

    move-result-object p2

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/zr4;->C:Lcom/shabakaty/downloader/wr4;

    check-cast v0, Lcom/shabakaty/downloader/zr4$u;

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/zr4$u;->d(Lcom/shabakaty/downloader/pa2;Lcom/shabakaty/downloader/z92;)V

    return-void
.end method
