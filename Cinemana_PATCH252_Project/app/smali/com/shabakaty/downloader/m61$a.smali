.class public Lcom/shabakaty/downloader/m61$a;
.super Lcom/shabakaty/downloader/wr4;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/m61;->a(Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/wr4<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/wr4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/wr4<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lcom/shabakaty/downloader/lr1;

.field public final synthetic e:Lcom/shabakaty/downloader/cu4;

.field public final synthetic f:Lcom/shabakaty/downloader/m61;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/m61;ZZLcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/cu4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/m61$a;->f:Lcom/shabakaty/downloader/m61;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/m61$a;->b:Z

    iput-boolean p3, p0, Lcom/shabakaty/downloader/m61$a;->c:Z

    iput-object p4, p0, Lcom/shabakaty/downloader/m61$a;->d:Lcom/shabakaty/downloader/lr1;

    iput-object p5, p0, Lcom/shabakaty/downloader/m61$a;->e:Lcom/shabakaty/downloader/cu4;

    invoke-direct {p0}, Lcom/shabakaty/downloader/wr4;-><init>()V

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
    iget-boolean v0, p0, Lcom/shabakaty/downloader/m61$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->Y()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/m61$a;->a:Lcom/shabakaty/downloader/wr4;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/m61$a;->d:Lcom/shabakaty/downloader/lr1;

    iget-object v1, p0, Lcom/shabakaty/downloader/m61$a;->f:Lcom/shabakaty/downloader/m61;

    iget-object v2, p0, Lcom/shabakaty/downloader/m61$a;->e:Lcom/shabakaty/downloader/cu4;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/lr1;->g(Lcom/shabakaty/downloader/xr4;Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/m61$a;->a:Lcom/shabakaty/downloader/wr4;

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/wr4;->a(Lcom/shabakaty/downloader/ga2;)Ljava/lang/Object;

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
    iget-boolean v0, p0, Lcom/shabakaty/downloader/m61$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pa2;->k()Lcom/shabakaty/downloader/pa2;

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/m61$a;->a:Lcom/shabakaty/downloader/wr4;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/m61$a;->d:Lcom/shabakaty/downloader/lr1;

    iget-object v1, p0, Lcom/shabakaty/downloader/m61$a;->f:Lcom/shabakaty/downloader/m61;

    iget-object v2, p0, Lcom/shabakaty/downloader/m61$a;->e:Lcom/shabakaty/downloader/cu4;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/lr1;->g(Lcom/shabakaty/downloader/xr4;Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/m61$a;->a:Lcom/shabakaty/downloader/wr4;

    .line 5
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/wr4;->b(Lcom/shabakaty/downloader/pa2;Ljava/lang/Object;)V

    return-void
.end method
