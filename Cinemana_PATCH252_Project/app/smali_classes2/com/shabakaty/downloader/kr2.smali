.class public final Lcom/shabakaty/downloader/kr2;
.super Lcom/shabakaty/downloader/af2;
.source "MemberDeserializer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/downloader/r8;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/jr2;

.field public final synthetic s:Lcom/shabakaty/downloader/es2;

.field public final synthetic t:Lcom/shabakaty/downloader/i8;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/jr2;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/i8;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/kr2;->r:Lcom/shabakaty/downloader/jr2;

    iput-object p2, p0, Lcom/shabakaty/downloader/kr2;->s:Lcom/shabakaty/downloader/es2;

    iput-object p3, p0, Lcom/shabakaty/downloader/kr2;->t:Lcom/shabakaty/downloader/i8;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kr2;->r:Lcom/shabakaty/downloader/jr2;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->c:Lcom/shabakaty/downloader/qm0;

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/jr2;->a(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gj3;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/kr2;->r:Lcom/shabakaty/downloader/jr2;

    iget-object v2, p0, Lcom/shabakaty/downloader/kr2;->s:Lcom/shabakaty/downloader/es2;

    iget-object v3, p0, Lcom/shabakaty/downloader/kr2;->t:Lcom/shabakaty/downloader/i8;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 8
    iget-object v1, v1, Lcom/shabakaty/downloader/or0;->e:Lcom/shabakaty/downloader/l8;

    .line 9
    invoke-interface {v1, v0, v2, v3}, Lcom/shabakaty/downloader/l8;->j(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/i8;)Ljava/util/List;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 10
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_1
    return-object v0
.end method
