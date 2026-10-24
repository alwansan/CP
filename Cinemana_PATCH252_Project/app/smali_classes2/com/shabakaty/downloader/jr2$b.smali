.class public final Lcom/shabakaty/downloader/jr2$b;
.super Lcom/shabakaty/downloader/af2;
.source "MemberDeserializer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/jr2;->d(Lcom/shabakaty/downloader/vi3;Z)Lcom/shabakaty/downloader/d9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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

.field public final synthetic s:Z

.field public final synthetic t:Lcom/shabakaty/downloader/vi3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/jr2;ZLcom/shabakaty/downloader/vi3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/jr2$b;->r:Lcom/shabakaty/downloader/jr2;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/jr2$b;->s:Z

    iput-object p3, p0, Lcom/shabakaty/downloader/jr2$b;->t:Lcom/shabakaty/downloader/vi3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jr2$b;->r:Lcom/shabakaty/downloader/jr2;

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
    iget-boolean v1, p0, Lcom/shabakaty/downloader/jr2$b;->s:Z

    iget-object v2, p0, Lcom/shabakaty/downloader/jr2$b;->r:Lcom/shabakaty/downloader/jr2;

    iget-object v3, p0, Lcom/shabakaty/downloader/jr2$b;->t:Lcom/shabakaty/downloader/vi3;

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v2, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 8
    iget-object v1, v1, Lcom/shabakaty/downloader/or0;->e:Lcom/shabakaty/downloader/l8;

    .line 9
    invoke-interface {v1, v0, v3}, Lcom/shabakaty/downloader/l8;->b(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/vi3;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, v2, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 11
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 12
    iget-object v1, v1, Lcom/shabakaty/downloader/or0;->e:Lcom/shabakaty/downloader/l8;

    .line 13
    invoke-interface {v1, v0, v3}, Lcom/shabakaty/downloader/l8;->f(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/vi3;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 14
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_2
    return-object v0
.end method
