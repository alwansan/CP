.class public final Lcom/shabakaty/downloader/jr2$c;
.super Lcom/shabakaty/downloader/af2;
.source "MemberDeserializer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/jr2;->g(Lcom/shabakaty/downloader/vi3;)Lcom/shabakaty/downloader/yh3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qb0<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/jr2;

.field public final synthetic s:Lcom/shabakaty/downloader/vi3;

.field public final synthetic t:Lcom/shabakaty/downloader/hs0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/jr2;Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/hs0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/jr2$c;->r:Lcom/shabakaty/downloader/jr2;

    iput-object p2, p0, Lcom/shabakaty/downloader/jr2$c;->s:Lcom/shabakaty/downloader/vi3;

    iput-object p3, p0, Lcom/shabakaty/downloader/jr2$c;->t:Lcom/shabakaty/downloader/hs0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jr2$c;->r:Lcom/shabakaty/downloader/jr2;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->c:Lcom/shabakaty/downloader/qm0;

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/jr2;->a(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gj3;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/jr2$c;->r:Lcom/shabakaty/downloader/jr2;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 8
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 9
    iget-object v1, v1, Lcom/shabakaty/downloader/or0;->e:Lcom/shabakaty/downloader/l8;

    .line 10
    iget-object v2, p0, Lcom/shabakaty/downloader/jr2$c;->s:Lcom/shabakaty/downloader/vi3;

    iget-object v3, p0, Lcom/shabakaty/downloader/jr2$c;->t:Lcom/shabakaty/downloader/hs0;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/zh3;->h()Lcom/shabakaty/downloader/qe2;

    move-result-object v3

    const-string v4, "property.returnType"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/shabakaty/downloader/l8;->d(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/qe2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qb0;

    return-object v0
.end method
